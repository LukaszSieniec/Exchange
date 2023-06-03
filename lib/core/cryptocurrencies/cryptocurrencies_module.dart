import 'package:dio/dio.dart';
import 'package:exchange/common/dependency_injection.dart';
import 'package:exchange/core/cryptocurrencies/data/network/cryptocurrencies_api.dart';
import 'package:exchange/core/cryptocurrencies/data/repository/coin_gecko_cryptocurrencies_repository.dart';
import 'package:exchange/core/cryptocurrencies/domain/repository/cryptocurrencies_repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CryptocurrenciesModule {
  @LazySingleton(as: CryptocurrenciesRepository)
  CoinGeckoCryptocurrenciesRepository get cryptocurrenciesRepository;

  @lazySingleton
  CryptocurrenciesApi get cryptocurrenciesApi =>
      CryptocurrenciesApi(inject<Dio>());
}
