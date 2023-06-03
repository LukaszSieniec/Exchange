import 'package:exchange/core/trending/domain/repository/trending_repository.dart';
import 'package:exchange/features/dashboard/presentation/bloc/dashboard_event.dart';
import 'package:exchange/features/dashboard/presentation/bloc/dashboard_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final TrendingRepository _trendingRepository;

  DashboardBloc(
    this._trendingRepository,
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
  }
}
