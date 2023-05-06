import 'package:auto_route/auto_route.dart';
import 'package:exchange/features/splash/presentation/splash_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) => const SplashBody();
}
