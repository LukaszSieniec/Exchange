import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_chart_entity.freezed.dart';

@freezed
class MarketChartEntity with _$MarketChartEntity {
  factory MarketChartEntity({
    required List<List<double>> prices,
  }) = _MarketChartEntity;
}
