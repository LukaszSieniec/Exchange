import 'package:exchange/blocs/cryptocurrencies/cryptocurrencies_bloc.dart';
import 'package:exchange/blocs/cryptocurrencies/cryptocurrencies_state.dart';
import 'package:exchange/constants/my_constants.dart';
import 'package:exchange/utils/size_config.dart';
import 'package:exchange/views/widgets/home/cryptocurrency_item.dart';
import 'package:exchange/views/widgets/home/trending_item.dart';
import 'package:exchange/views/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocBuilder<CryptocurrenciesBloc, CryptocurrenciesState>(
        builder: (context, state) {
      if (state.cryptocurrenciesStatus == CryptocurrenciesStatus.loading) {
        return buildLoading();
      } else if (state.cryptocurrenciesStatus ==
          CryptocurrenciesStatus.success) {
        return _buildHomeBody(state);
      } else {
        return Container();
      }
    });
  }

  Widget _buildHomeBody(CryptocurrenciesState state) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(MyLabels.trending,
          style: TextStyle(
              color: const Color(MyColors.colorText),
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.blockSizeVertical * 2.80)),
      Expanded(
          flex: 3,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.trending.length,
              itemBuilder: (context, index) {
                return TrendingItem(state.trending[index]);
              })),
      Text(MyLabels.cryptocurrencies,
          style: TextStyle(
              color: const Color(MyColors.colorText),
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.blockSizeVertical * 2.80)),
      Expanded(
          flex: 4,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: state.cryptocurrencies.length,
              itemBuilder: (context, index) {
                return CryptocurrencyItem(state.cryptocurrencies[index]);
              }))
    ]);
  }
}
