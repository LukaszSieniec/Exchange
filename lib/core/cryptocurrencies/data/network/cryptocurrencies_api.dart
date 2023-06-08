import 'package:exchange/core/cryptocurrencies/data/network/dto/cryptocurrency_market/cryptocurrency_market_response.dart';
import 'package:exchange/core/cryptocurrencies/data/network/dto/market_chart_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'cryptocurrencies_api.g.dart';

@RestApi()
abstract class CryptocurrenciesApi {
  static const cryptocurrenciesPath = 'coins';

  factory CryptocurrenciesApi(Dio dio) = _CryptocurrenciesApi;

  @GET('$cryptocurrenciesPath/markets')
  Future<List<CryptocurrencyMarketResponse>> fetchCryptocurrenciesMarket(
    @Query("vs_currency") String vsCurrency,
    @Query("order") String order,
    @Query("per_page") int perPage,
    @Query("page") int page,
    @Query("sparkline") bool sparkline,
    @Query("price_change_percentage") String priceChangePercentage,
  );

  @GET('$cryptocurrenciesPath/markets')
  Future<List<CryptocurrencyMarketResponse>> fetchCryptocurrenciesMarketByIds(
    @Query("vs_currency") String vsCurrency,
    @Query("ids") String ids,
    @Query("order") String order,
    @Query("sparkline") bool sparkline,
    @Query("price_change_percentage") String priceChangePercentage,
  );

  @GET('$cryptocurrenciesPath/{id}')
  Future<CryptocurrencyMarketResponse> fetchCryptocurrencyById(
    @Path() String id,
    @Query("localization") String localization,
    @Query("tickers") bool tickers,
    @Query("market_data") bool marketData,
    @Query("community_data") bool communityData,
    @Query("developer_data") bool developerData,
    @Query("sparkline") bool sparkline,
  );

  @GET('$cryptocurrenciesPath/{id}/market_chart')
  Future<MarketChartResponse> fetchMarketChart(
    @Path() String id,
    @Query("vs_currency") String vsCurrency,
    @Query("days") String days,
  );
}
