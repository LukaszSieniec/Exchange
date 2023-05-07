import 'package:exchange/features/bottom_navigation_bar/cubit/bottom_navigation_bar_cubit.dart';
import 'package:exchange/features/home/presentation/home_page.dart';
import 'package:exchange/features/profile/presentation/profile_page.dart';
import 'package:exchange/features/transations/presentation/transactions_page.dart';
import 'package:exchange/features/wallet/presentation/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              HomePage(),
              WalletPage(),
              TransactionsPage(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              _buildBottomNavBarItem(
                label: '',
                defaultIcon: '',
                activeIcon: '',
              ),
              _buildBottomNavBarItem(
                label: '',
                defaultIcon: '',
                activeIcon: '',
              ),
              _buildBottomNavBarItem(
                label: '',
                defaultIcon: '',
                activeIcon: '',
              ),
              _buildBottomNavBarItem(
                label: '',
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
      );

  BottomNavigationBarItem _buildBottomNavBarItem({
    required String label,
    required String defaultIcon,
    required String activeIcon,
  }) =>
      BottomNavigationBarItem(
        label: label,
        icon: const Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: SizedBox(),
        ),
        activeIcon: const Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: SizedBox(),
        ),
      );
}
