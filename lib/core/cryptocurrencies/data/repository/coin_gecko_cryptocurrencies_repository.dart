import 'package:dio/dio.dart';
import 'package:exchange/common/result.dart';
import 'package:exchange/core/cryptocurrencies/data/network/cryptocurrencies_api.dart';
import 'package:exchange/core/cryptocurrencies/data/network/dto/cryptocurrency_market/cryptocurrency_market_response.dart';
import 'package:exchange/core/cryptocurrencies/data/network/dto/market_chart_response.dart';
import 'package:exchange/core/cryptocurrencies/domain/entity/cryptocurrency_market_entity.dart';
import 'package:exchange/core/cryptocurrencies/domain/entity/market_chart_entity.dart';
import 'package:exchange/core/cryptocurrencies/domain/repository/cryptocurrencies_repository.dart';
import 'package:rxdart/rxdart.dart';

class CoinGeckoCryptocurrenciesRepository
    implements CryptocurrenciesRepository {
  final CryptocurrenciesApi _cryptocurrenciesApi;

  final BehaviorSubject<List<CryptocurrencyMarketEntity>> cryptocurrencies;

  CoinGeckoCryptocurrenciesRepository(this._cryptocurrenciesApi)
      : cryptocurrencies = BehaviorSubject();

  @override
  Stream<List<CryptocurrencyMarketEntity>> get observeCryptocurrenciesMarket =>
      cryptocurrencies.stream;

  @override
  Future<Result<List<CryptocurrencyMarketEntity>, Exception>>
      fetchCryptocurrenciesMarket({
    required bool clearCryptocurrencies,
    required String vsCurrency,
    required String order,
    required int pageSize,
    required int pageIndex,
    required bool sparkline,
    required String priceChangePercentage,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CryptocurrencyMarketEntity>, Exception>>
      fetchCryptocurrenciesMarketByIds({
    required String vsCurrency,
    required String ids,
    required String order,
    required bool sparkline,
    required String priceChangePercentage,
  }) async {
    try {
      final List<CryptocurrencyMarketResponse> cryptocurrenciesResponse =
          await _cryptocurrenciesApi.fetchCryptocurrenciesMarketByIds(
        vsCurrency,
        ids,
        order,
        sparkline,
        priceChangePercentage,
      );

      final List<CryptocurrencyMarketEntity> cryptocurrencies =
          cryptocurrenciesResponse
              .map((currencyResponse) => currencyResponse.toEntity())
              .toList();

      return Result.success(data: cryptocurrencies);
    } on DioError catch (error) {
      return Result.failure(error: error);
    }
  }

  @override
  Future<Result<Object, Exception>> fetchCryptocurrencyById({
    required String id,
    required bool marketData,
    required bool sparkline,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Result<MarketChartEntity, Exception>> fetchMarketChart({
    required String id,
    required String vsCurrency,
    required String days,
  }) async {
    try {
      final MarketChartResponse marketChartResponse =
          await _cryptocurrenciesApi.fetchMarketChart(
        id,
        vsCurrency,
        days,
      );

      final MarketChartEntity marketChartEntity =
          marketChartResponse.toEntity();

      return Result.success(data: marketChartEntity);
    } on DioError catch (error) {
      return Result.failure(error: error);
    }
  }
}
