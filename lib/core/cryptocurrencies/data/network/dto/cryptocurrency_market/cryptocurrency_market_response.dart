// ignore_for_file: invalid_annotation_target

import 'package:exchange/common/data/mapper/dto_mapper.dart';
import 'package:exchange/core/cryptocurrencies/data/network/dto/cryptocurrency_market/sparkline_response.dart';
import 'package:exchange/core/cryptocurrencies/domain/entity/cryptocurrency_market_entity.dart';
import 'package:exchange/core/cryptocurrencies/domain/entity/sparkline_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cryptocurrency_market_response.freezed.dart';

part 'cryptocurrency_market_response.g.dart';

@freezed
class CryptocurrencyMarketResponse
    with _$CryptocurrencyMarketResponse
    implements
        DtoMapper<CryptocurrencyMarketResponse, CryptocurrencyMarketEntity> {
  const CryptocurrencyMarketResponse._();

  factory CryptocurrencyMarketResponse({
    required String id,
    required String symbol,
    required String name,
    required String image,
    @JsonKey(name: 'current_price')
        required double currentPrice,
    @JsonKey(name: 'market_cap')
        required int marketCap,
    @JsonKey(name: 'market_cap_rank')
        required int marketCapRank,
    @JsonKey(name: 'total_volume')
        required num totalVolume,
    @JsonKey(name: 'price_change_24h')
        required double priceChange24h,
    @JsonKey(name: 'price_change_percentage_24h')
        required double priceChangePercentage24h,
    @JsonKey(name: 'circulating_supply')
        required num circulatingSupply,
    @JsonKey(name: 'total_supply')
        required num? totalSupply,
    @JsonKey(name: 'max_supply')
        required num? maxSupply,
    required num ath,
    @JsonKey(name: 'ath_change_percentage')
        required double athChangePercentage,
    @JsonKey(name: 'sparkline_in_7d')
        required SparklineResponse sparklineIn7d,
  }) = _CryptocurrencyMarketResponse;

  factory CryptocurrencyMarketResponse.fromJson(Map<String, dynamic> json) =>
      _$CryptocurrencyMarketResponseFromJson(json);

  @override
  CryptocurrencyMarketEntity toEntity() => CryptocurrencyMarketEntity(
        id: id,
        symbol: symbol,
        name: name,
        image: image,
        currentPrice: currentPrice,
        priceChange24h: priceChange24h,
        sparklineEntity: SparklineEntity(prices: sparklineIn7d.price),
      );
}
