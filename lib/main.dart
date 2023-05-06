import 'package:exchange/common/app_environment.dart';
import 'package:exchange/common/dependency_injection.dart';
import 'package:exchange/features/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void initializeRunConfiguration({required AppEnvironment environment}) async {
  /// Ensure to run native code before the application starts.
  WidgetsFlutterBinding.ensureInitialized();

  /// Allow to use the application in portrait mode only.
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  /// Configure dependency injection.
  configureDependencies(environment);

  runApplication();
}

void runApplication() => runApp(const AppInitializationWidget());

class AppInitializationWidget extends StatelessWidget {
  const AppInitializationWidget({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'Exchange',
        debugShowCheckedModeBanner: false,
        routerConfig: inject<AppRouter>().config(),
      );
}
