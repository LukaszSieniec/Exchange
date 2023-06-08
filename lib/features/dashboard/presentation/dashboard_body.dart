import 'package:easy_localization/easy_localization.dart';
import 'package:exchange/common/presentation/widgets/app_header.dart';
import 'package:exchange/common/presentation/widgets/app_loading.dart';
import 'package:exchange/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:exchange/features/dashboard/presentation/bloc/dashboard_state.dart';
import 'package:exchange/features/dashboard/presentation/widget/trending_cryptocurrencies_list.dart';
import 'package:exchange/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) => state.status.maybeWhen(
          loading: () => const AppLoading(),
          orElse: () => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppHeader(label: LocaleKeys.common_dashboard.tr()),
                SizedBox(height: 32.0.h),
                SizedBox(
                  height: 280.0.h,
                  child: TrendingCryptocurrenciesList(
                    cryptocurrencies: state.trendingCryptocurrencies,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
