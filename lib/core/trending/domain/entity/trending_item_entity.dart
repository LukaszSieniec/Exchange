import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_item_entity.freezed.dart';

@freezed
class TrendingItemEntity with _$TrendingItemEntity {
  factory TrendingItemEntity({
    required String id,
    required String name,
    required String symbol,
    required int marketCapRank,
    required String large,
  }) = _TrendingItemEntity;
}
