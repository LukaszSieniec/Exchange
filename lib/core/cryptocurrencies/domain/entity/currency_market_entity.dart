import 'package:exchange/core/cryptocurrencies/domain/entity/sparkline_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_market_entity.freezed.dart';

@freezed
class CurrencyMarketEntity with _$CurrencyMarketEntity {
  factory CurrencyMarketEntity({
    required String id,
    required String symbol,
    required String name,
    required String image,
    required double currentPrice,
    required double priceChange24h,
    required SparklineEntity sparklineEntity,
  }) = _CurrencyMarketEntity;
}
