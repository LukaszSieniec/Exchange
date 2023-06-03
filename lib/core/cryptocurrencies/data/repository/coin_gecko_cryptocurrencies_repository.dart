import 'package:exchange/common/result.dart';
import 'package:exchange/core/cryptocurrencies/data/network/cryptocurrencies_api.dart';
import 'package:exchange/core/cryptocurrencies/domain/entity/cryptocurrency_market_entity.dart';
import 'package:exchange/core/cryptocurrencies/domain/entity/market_chart_entity.dart';
import 'package:exchange/core/cryptocurrencies/domain/repository/cryptocurrencies_repository.dart';

class CoinGeckoCryptocurrenciesRepository
    implements CryptocurrenciesRepository {
  final CryptocurrenciesApi _cryptocurrenciesApi;

  const CoinGeckoCryptocurrenciesRepository(this._cryptocurrenciesApi);

  @override
  Future<Result<List<CryptocurrencyMarketEntity>, Exception>>
      fetchCryptocurrenciesMarket(
          {required bool clearCryptocurrencies,
          required String vsCurrency,
          required String order,
          required int pageSize,
          required int pageIndex,
          required bool sparkline,
          required String priceChangePercentage}) {
    // TODO: implement fetchCryptocurrenciesMarket
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CryptocurrencyMarketEntity>, Exception>>
      fetchCryptocurrenciesMarketByIds(
          {required String vsCurrency,
          required String ids,
          required String order,
          required bool sparkline,
          required String priceChangePercentage}) {
    // TODO: implement fetchCryptocurrenciesMarketByIds
    throw UnimplementedError();
  }

  @override
  Future<Result<Object, Exception>> fetchCryptocurrencyById(
      {required String id, required bool marketData, required bool sparkline}) {
    // TODO: implement fetchCryptocurrencyById
    throw UnimplementedError();
  }

  @override
  Future<Result<MarketChartEntity, Exception>> fetchMarketChart(
      {required String id, required String vsCurrency, required String days}) {
    // TODO: implement fetchMarketChart
    throw UnimplementedError();
  }

  @override
  // TODO: implement observeCryptocurrenciesMarket
  Stream<List<CryptocurrencyMarketEntity>> get observeCryptocurrenciesMarket =>
      throw UnimplementedError();
}
