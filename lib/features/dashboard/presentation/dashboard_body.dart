import 'package:easy_localization/easy_localization.dart';
import 'package:exchange/common/presentation/widgets/app_header.dart';
import 'package:exchange/features/dashboard/presentation/widget/cryptocurrency_trend_list.dart';
import 'package:exchange/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader(label: LocaleKeys.common_dashboard.tr()),
          const CryptocurrencyTrendList(),
        ],
      );
}
