import 'package:exchange/core/trending/data/network/dto/trending_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'trending_api.g.dart';

@RestApi()
abstract class TrendingApi {
  static const trendingPath = 'search/trending';

  factory TrendingApi(Dio dio) = _TrendingApi;

  @GET(trendingPath)
  Future<TrendingResponse> fetchTrending();
}
