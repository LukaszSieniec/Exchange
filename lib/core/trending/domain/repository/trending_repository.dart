import 'package:exchange/common/result.dart';
import 'package:exchange/core/trending/data/network/dto/trending_response.dart';
import 'package:exchange/core/trending/domain/entity/trending_entity.dart';

abstract class TrendingRepository {
  /// The method allows you to fetch [TrendingResponse].
  /// Top-7 trending coins on CoinGecko as searched by users in the last 24 hours.
  /// Ordered by most popular first.
  Future<Result<List<TrendingEntity>, Exception>> fetchTrending();
}
