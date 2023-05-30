import 'package:exchange/common/result.dart';
import 'package:exchange/core/cryptocurrencies/data/network/dto/cryptocurrency_market/cryptocurrency_market_response.dart';
import 'package:exchange/core/cryptocurrencies/domain/entity/cryptocurrency_market_entity.dart';
import 'package:exchange/core/cryptocurrencies/domain/entity/market_chart_entity.dart';

abstract class CryptocurrenciesRepository {
  /// It returns a stream that allows us to observe changes
  /// and then allows you to perform the action in the [DashboardBloc].
  Stream<List<CryptocurrencyMarketEntity>> get observeCryptocurrenciesMarket;

  /// The method allows you to fetch the [CryptocurrencyMarketResponse].
  /// The [clearCryptocurrencies] parameter allows you to clear data from the BehaviorSubject.
  /// There are situations when we need to do this in order not to duplicate elements.
  Future<Result<List<CryptocurrencyMarketEntity>, Exception>>
      fetchCryptocurrenciesMarket({
    required bool clearCryptocurrencies,
    required String vsCurrency,
    required String order,
    required int pageSize,
    required int pageIndex,
    required bool sparkline,
    required String priceChangePercentage,
  });

  /// The method allows you to fetch [CryptocurrencyMarketResponse].
  Future<Result<List<CryptocurrencyMarketEntity>, Exception>>
      fetchCryptocurrenciesMarketByIds({
    required String vsCurrency,
    required String ids,
    required String order,
    required bool sparkline,
    required String priceChangePercentage,
  });

  /// The method allows you to fetch [Object].
  Future<Result<Object, Exception>> fetchCryptocurrencyById({
    required String id,
    required bool marketData,
    required bool sparkline,
  });

  /// The method allows you to fetch [MarketChartResponse].
  Future<Result<MarketChartEntity, Exception>> fetchMarketChart({
    required String id,
    required String vsCurrency,
    required String days,
  });
}
