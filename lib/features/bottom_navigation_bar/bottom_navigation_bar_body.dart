import 'package:easy_localization/easy_localization.dart';
import 'package:exchange/common/presentation/design/app_shadows.dart';
import 'package:exchange/features/bottom_navigation_bar/cubit/bottom_navigation_bar_cubit.dart';
import 'package:exchange/features/dashboard/presentation/dashboard_page.dart';
import 'package:exchange/features/profile/presentation/profile_page.dart';
import 'package:exchange/features/transactions/presentation/transactions_page.dart';
import 'package:exchange/features/wallet/presentation/wallet_page.dart';
import 'package:exchange/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigationBarBody extends StatelessWidget {
  final PageController _pageController;

  BottomNavigationBarBody({super.key}) : _pageController = PageController();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<BottomNavigationBarCubit, int>(
        listenWhen: (previousTab, currentTab) => previousTab != currentTab,
        listener: (context, index) => _pageController.jumpToPage(index),
        builder: (context, index) => Scaffold(
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              DashboardPage(),
              WalletPage(),
              TransactionsPage(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(32.0.r),
              ),
              boxShadow: const [
                AppShadows.bottomNavigationBarShadow,
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(32.0.r),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: <BottomNavigationBarItem>[
                  _buildBottomNavBarItem(
                    label: LocaleKeys.common_dashboard.tr(),
                    defaultIcon: '',
                    activeIcon: '',
                  ),
                  _buildBottomNavBarItem(
                    label: LocaleKeys.common_wallet.tr(),
                    defaultIcon: '',
                    activeIcon: '',
                  ),
                  _buildBottomNavBarItem(
                    label: LocaleKeys.common_transactions.tr(),
                    defaultIcon: '',
                    activeIcon: '',
                  ),
                  _buildBottomNavBarItem(
                    label: LocaleKeys.common_profile.tr(),
                    defaultIcon: '',
                    activeIcon: '',
                  ),
                ],
                currentIndex: index,
                onTap: (index) => context
                    .read<BottomNavigationBarCubit>()
                    .changedTab(selectedTab: index),
              ),
            ),
          ),
        ),
      );

  BottomNavigationBarItem _buildBottomNavBarItem({
    required String label,
    required String defaultIcon,
    required String activeIcon,
  }) =>
      BottomNavigationBarItem(
        label: label,
        icon: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0.r),
          child: const SizedBox(),
        ),
        activeIcon: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0.r),
          child: const SizedBox(),
        ),
      );
}
