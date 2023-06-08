import 'package:exchange/common/enum/cryptocurrencies_market_order.dart';
import 'package:exchange/common/enum/currency.dart';
import 'package:exchange/common/enum/time_unit.dart';
import 'package:exchange/core/cryptocurrencies/domain/repository/cryptocurrencies_repository.dart';
import 'package:exchange/core/trending/domain/repository/trending_repository.dart';
import 'package:exchange/features/dashboard/presentation/bloc/dashboard_event.dart';
import 'package:exchange/features/dashboard/presentation/bloc/dashboard_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  /// Possible number of CryptocurrenciesMarket to be retrieved at once.
  static const int _pageSize = 25;

  final TrendingRepository _trendingRepository;
  final CryptocurrenciesRepository _cryptocurrenciesRepository;

  DashboardBloc(
    this._trendingRepository,
    this._cryptocurrenciesRepository,
  ) : super(const DashboardState()) {
    on<FetchedTrendingDashboardEvent>(_onFetchedTrending);
    on<InitializedDashboardEvent>(_onInitialized);
  }

  Future<void> _onFetchedTrending(
    FetchedTrendingDashboardEvent event,
    Emitter<DashboardState> emit,
  ) async {
    final result = await _trendingRepository.fetchTrending();

    result.when(
      success: (trendingCryptocurrencies) => add(
        DashboardEvent.initialized(
          trendingCryptocurrencies: trendingCryptocurrencies ?? [],
        ),
      ),
      failure: (error) =>
          emit(state.copyWith(status: const DashboardStatus.failure())),
    );
  }

  Future<void> _onInitialized(
    InitializedDashboardEvent event,
    Emitter<DashboardState> emit,
  ) async {
    /// IDs of all popular cryptocurrencies.
    final List<String> trendingCryptocurrencies =
        event.trendingCryptocurrencies.map((element) => element.id).toList();

    /// It allows you to receive initial data related to trends and the first
    /// 25 items from the list of cryptocurrencies.
    final results = await Future.wait(
      [
        _cryptocurrenciesRepository.fetchCryptocurrenciesMarketByIds(
          vsCurrency: Currency.USD.name,
          ids: '$trendingCryptocurrencies',
          order: CryptocurrenciesMarketOrder.MARKET_CAP_DESC.name,
          sparkline: true,
          priceChangePercentage: TimeUnit.D.name,
        ),
        _cryptocurrenciesRepository.fetchCryptocurrenciesMarket(
          clearCryptocurrencies: true,
          vsCurrency: Currency.USD.name,
          order: CryptocurrenciesMarketOrder.MARKET_CAP_DESC.name,
          pageSize: _pageSize,
          pageIndex: 1,
          sparkline: true,
          priceChangePercentage: TimeUnit.D.name,
        ),
      ],
    );

    final cryptocurrencies = results.fold(
      [],
      (cryptocurrencies, currentResult) {
        currentResult.maybeMap(
          success: (success) => cryptocurrencies.add(success.data),
          orElse: () => null,
        );
        return cryptocurrencies;
      },
    );

    emit(
      state.copyWith(
        trendingCryptocurrencies: cryptocurrencies[0],
        cryptocurrencies: cryptocurrencies[1],
        status: cryptocurrencies.length == 2
            ? const DashboardStatus.success()
            : const DashboardStatus.failure(),
      ),
    );
  }
}
