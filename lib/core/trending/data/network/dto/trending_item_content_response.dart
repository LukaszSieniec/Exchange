// ignore_for_file: invalid_annotation_target

import 'package:exchange/common/data/mapper/dto_mapper.dart';
import 'package:exchange/core/trending/domain/entity/trending_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_item_content_response.freezed.dart';

part 'trending_item_content_response.g.dart';

@freezed
class TrendingItemContentResponse
    with _$TrendingItemContentResponse
    implements DtoMapper<TrendingItemContentResponse, TrendingEntity> {
  const TrendingItemContentResponse._();

  factory TrendingItemContentResponse({
    required String id,
    @JsonKey(name: 'coin_id') required int coinId,
    required String name,
    required String symbol,
    @JsonKey(name: 'market_cap_rank') required int marketCapRank,
    required String thumb,
    required String small,
    required String large,
    required String slug,
    @JsonKey(name: 'price_btc') required double priceBtc,
    required int score,
  }) = _TrendingItemContentResponse;

  factory TrendingItemContentResponse.fromJson(Map<String, dynamic> json) =>
      _$TrendingItemContentResponseFromJson(json);

  @override
  TrendingEntity toEntity() => TrendingEntity(
        id: id,
        name: name,
        symbol: symbol,
        marketCapRank: marketCapRank,
        large: large,
      );
}
