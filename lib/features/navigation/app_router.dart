import 'package:auto_route/auto_route.dart';
import 'package:exchange/features/splash/presentation/splash_page.dart';

part 'app_router.gr.dart';

const String _replacement = 'Page,Route';

@AutoRouterConfig(replaceInRouteName: _replacement)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
      ];
}
