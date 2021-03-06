import 'package:exchange/blocs/buy_cryptocurrency/buy_cryptocurrency_bloc.dart';
import 'package:exchange/blocs/buy_cryptocurrency/buy_cryptocurrency_event.dart';
import 'package:exchange/blocs/sell_cryptocurrency/sell_cryptocurrency_bloc.dart';
import 'package:exchange/blocs/sell_cryptocurrency/sell_cryptocurrency_event.dart';
import 'package:exchange/constants/my_constants.dart';
import 'package:exchange/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'keyboard_button.dart';

class Keyboard extends StatelessWidget {
  final String mode;

  const Keyboard(this.mode, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: MyLabels.keyboardLabels.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2.0,
            crossAxisCount: 3,
            crossAxisSpacing: SizeConfig.blockSizeHorizontal * 3.35,
            mainAxisSpacing: SizeConfig.blockSizeVertical * 1.70),
        itemBuilder: (context, index) => KeyboardButton(
            MyLabels.keyboardLabels[index],
            onPressed: (label) => mode == MyLabels.buyMode
                ? context
                    .read<BuyCryptocurrencyBloc>()
                    .add(BuyCryptocurrencyCurrentAmountMoneyUpdated(label))
                : context
                    .read<SellCryptocurrencyBloc>()
                    .add(SellCryptocurrencyAmountUpdated(label))));
  }
}
