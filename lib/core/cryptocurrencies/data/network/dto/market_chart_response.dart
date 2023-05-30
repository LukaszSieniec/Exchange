import 'package:exchange/common/data/mapper/dto_mapper.dart';
import 'package:exchange/core/cryptocurrencies/domain/entity/market_chart_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_chart_response.freezed.dart';

part 'market_chart_response.g.dart';

@freezed
class MarketChartResponse
    with _$MarketChartResponse
    implements DtoMapper<MarketChartResponse, MarketChartEntity> {
  const MarketChartResponse._();

  factory MarketChartResponse({
    required List<List<double>> prices,
  }) = _MarketChartResponse;

  factory MarketChartResponse.fromJson(Map<String, dynamic> json) =>
      _$MarketChartResponseFromJson(json);

  @override
  MarketChartEntity toEntity() => MarketChartEntity(prices: prices);
}
