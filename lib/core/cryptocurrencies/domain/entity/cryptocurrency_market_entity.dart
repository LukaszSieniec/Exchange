import 'package:exchange/core/cryptocurrencies/domain/entity/sparkline_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cryptocurrency_market_entity.freezed.dart';

@freezed
class CryptocurrencyMarketEntity with _$CryptocurrencyMarketEntity {
  factory CryptocurrencyMarketEntity({
    required String id,
    required String symbol,
    required String name,
    required String image,
    required double currentPrice,
    required double priceChange24h,
    required SparklineEntity sparklineEntity,
  }) = _CryptocurrencyMarketEntity;
}
