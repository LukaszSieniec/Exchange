import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_entity.freezed.dart';

@freezed
class TrendingEntity with _$TrendingEntity {
  factory TrendingEntity({
    required String id,
    required String name,
    required String symbol,
    required int marketCapRank,
    required String large,
  }) = _TrendingEntity;
}
