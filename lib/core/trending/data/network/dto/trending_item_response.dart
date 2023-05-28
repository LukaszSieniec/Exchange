import 'package:exchange/core/trending/data/network/dto/trending_item_content_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_item_response.freezed.dart';

part 'trending_item_response.g.dart';

@freezed
class TrendingItemResponse with _$TrendingItemResponse {
  factory TrendingItemResponse({
    required TrendingItemContentResponse item,
  }) = _TrendingItemResponse;

  factory TrendingItemResponse.fromJson(Map<String, dynamic> json) =>
      _$TrendingItemResponseFromJson(json);
}
