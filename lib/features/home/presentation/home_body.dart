import 'package:easy_localization/easy_localization.dart';
import 'package:exchange/common/presentation/widgets/app_header.dart';
import 'package:exchange/features/home/presentation/widget/cryptocurrency_trend_list.dart';
import 'package:exchange/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader(
            label: LocaleKeys.common_home.tr(),
          ),
          const CryptocurrencyTrendList(),
        ],
      );
}
