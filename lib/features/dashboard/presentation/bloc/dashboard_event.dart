import 'package:exchange/core/trending/domain/entity/trending_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_event.freezed.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  /// The event triggers an attempt to retrieve the trending cryptocurrencies.
  const factory DashboardEvent.fetchedTrending() =
      FetchedTrendingDashboardEvent;

  /// The event triggers an attempt to initialize the data.
  /// It allows you to retrieve the most popular cryptocurrencies and the first 25 elements.
  const factory DashboardEvent.initialized({
    required List<TrendingEntity> trendingCryptocurrencies,
  }) = InitializedDashboardEvent;
}
