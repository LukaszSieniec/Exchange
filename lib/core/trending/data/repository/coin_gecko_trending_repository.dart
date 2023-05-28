import 'package:dio/dio.dart';
import 'package:exchange/common/result.dart';
import 'package:exchange/core/trending/data/network/dto/trending_response.dart';
import 'package:exchange/core/trending/data/network/trending_api.dart';
import 'package:exchange/core/trending/domain/entity/trending_entity.dart';
import 'package:exchange/core/trending/domain/repository/trending_repository.dart';

class CoinGeckoTrendingRepository implements TrendingRepository {
  final TrendingApi _trendingApi;

  const CoinGeckoTrendingRepository(this._trendingApi);

  @override
  Future<Result<List<TrendingEntity>, Exception>> fetchTrending() async {
    try {
      final TrendingResponse trendingResponse =
          await _trendingApi.fetchTrending();

      final List<TrendingEntity> entities = trendingResponse.coins
          .map((trendingItemResponse) => trendingItemResponse.item.toEntity())
          .toList();

      return Result.success(data: entities);
    } on DioError catch (error) {
      return Result.failure(error: error);
    }
  }
}
