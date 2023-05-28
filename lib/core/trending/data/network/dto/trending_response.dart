import 'package:exchange/core/trending/data/network/dto/trending_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_response.freezed.dart';

part 'trending_response.g.dart';

@freezed
class TrendingResponse with _$TrendingResponse {
  factory TrendingResponse({
    required List<TrendingItemResponse> coins,
  }) = _TrendingResponse;

  factory TrendingResponse.fromJson(Map<String, dynamic> json) =>
      _$TrendingResponseFromJson(json);
}
