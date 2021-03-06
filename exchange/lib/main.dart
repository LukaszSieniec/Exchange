import 'package:exchange/blocs/cryptocurrencies/cryptocurrencies_bloc.dart';
import 'package:exchange/blocs/cryptocurrencies/cryptocurrencies_event.dart';
import 'package:exchange/blocs/market_chart/market_chart_bloc.dart';
import 'package:exchange/blocs/sell_cryptocurrency/sell_cryptocurrency_bloc.dart';
import 'package:exchange/blocs/transactions/transactions_event.dart';
import 'package:exchange/blocs/wallet/wallet_bloc.dart';
import 'package:exchange/blocs/wallet/wallet_event.dart';
import 'package:exchange/database/cryptocurrency_database.dart';
import 'package:exchange/repositories/cryptocurrency_repository.dart';
import 'package:exchange/services/cryptocurrency_service.dart';
import 'package:exchange/views/pages/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/buy_cryptocurrency/buy_cryptocurrency_bloc.dart';
import 'blocs/transactions/transactions_bloc.dart';
import 'cubit/bottom_navigation_bar_cubit.dart';
import 'database/account_balance.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await AccountBalance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AppTabCubit()),
          BlocProvider(
              create: (context) => CryptocurrenciesBloc(
                  CryptocurrencyRepository(
                      CryptocurrencyService(), CryptocurrencyDatabase.get))
                ..add(const CryptocurrenciesFetched())),
          BlocProvider(
              create: (context) => MarketChartBloc(CryptocurrencyRepository(
                  CryptocurrencyService(), CryptocurrencyDatabase.get))),
          BlocProvider(
              create: (context) => BuyCryptocurrencyBloc(
                  BlocProvider.of<CryptocurrenciesBloc>(context))),
          BlocProvider(
              create: (context) => SellCryptocurrencyBloc(
                  CryptocurrencyRepository(
                      CryptocurrencyService(), CryptocurrencyDatabase.get))),
          BlocProvider(
              create: (context) => WalletBloc(
                  CryptocurrencyRepository(
                      CryptocurrencyService(), CryptocurrencyDatabase.get),
                  BlocProvider.of<BuyCryptocurrencyBloc>(context),
                  BlocProvider.of<SellCryptocurrencyBloc>(context))
                ..add(const WalletLoaded())),
          BlocProvider(
              create: (context) => TransactionsBloc(
                  CryptocurrencyRepository(
                      CryptocurrencyService(), CryptocurrencyDatabase.get),
                  BlocProvider.of<BuyCryptocurrencyBloc>(context),
                  BlocProvider.of<SellCryptocurrencyBloc>(context))
                ..add(const TransactionsLoaded()))
        ],
        child: const MaterialApp(
            debugShowCheckedModeBanner: false, home: BasicPage()));
  }
}
