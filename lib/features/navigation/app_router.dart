import 'package:auto_route/auto_route.dart';
import 'package:exchange/features/bottom_navigation_bar/bottom_navigation_bar_page.dart';
import 'package:exchange/features/dashboard/presentation/dashboard_page.dart';
import 'package:exchange/features/profile/presentation/profile_page.dart';
import 'package:exchange/features/splash/presentation/splash_page.dart';
import 'package:exchange/features/transactions/presentation/transactions_page.dart';
import 'package:exchange/features/wallet/presentation/wallet_page.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

const String _replacement = 'Page,Route';

@LazySingleton()
@AutoRouterConfig(replaceInRouteName: _replacement)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/splash',
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/bottom-navigation-bar',
          page: BottomNavigationBarRoute.page,
          children: [
            AutoRoute(
              path: 'dashboard',
              page: DashboardRoute.page,
            ),
            AutoRoute(
              path: 'wallet',
              page: WalletRoute.page,
            ),
            AutoRoute(
              path: 'transactions',
              page: TransactionsRoute.page,
            ),
            AutoRoute(
              path: 'profile',
              page: ProfileRoute.page,
            ),
          ],
        ),
      ];
}
