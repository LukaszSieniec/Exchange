import 'package:dio/dio.dart';
import 'package:exchange/common/dependency_injection.dart';
import 'package:exchange/core/trending/data/network/trending_api.dart';
import 'package:exchange/core/trending/data/repository/coin_gecko_trending_repository.dart';
import 'package:exchange/core/trending/domain/repository/trending_repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class TrendingModule {
  @LazySingleton(as: TrendingRepository)
  CoinGeckoTrendingRepository get trendingRepository;

  @lazySingleton
  TrendingApi get trendingApi => TrendingApi(inject<Dio>());
}
