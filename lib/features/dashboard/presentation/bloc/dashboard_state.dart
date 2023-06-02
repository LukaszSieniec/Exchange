import 'package:exchange/core/cryptocurrencies/domain/entity/cryptocurrency_market_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default([])
        final List<CryptocurrencyMarketEntity> trendingCryptocurrencies,
    @Default([])
        final List<CryptocurrencyMarketEntity> cryptocurrencies,
    @Default(1)
        final int pageIndex,
    @Default(false)
        final bool reachedMax,
    @Default(DashboardStatus.loading())
        final DashboardStatus status,
  }) = _DashboardState;
}

@freezed
class DashboardStatus with _$DashboardStatus {
  /// Allows you to display the Circular Progress Indicator.
  const factory DashboardStatus.loading() = _DashboardLoading;

  /// Retrieved data successfully - allows you to view the content.
  const factory DashboardStatus.success() = _DashboardSuccess;

  /// It reflects the error that may have occurred during the operation.
  const factory DashboardStatus.failure() = _DashboardFailure;
}
