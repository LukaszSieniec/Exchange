import 'package:auto_route/auto_route.dart';
import 'package:exchange/features/navigation/app_router.dart';
import 'package:exchange/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:exchange/features/splash/presentation/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) => BlocConsumer<SplashBloc, SplashState>(
        listener: (context, state) => state.status.maybeWhen(
          navigateToInsideApplication: () =>
              AutoRouter.of(context).replace(const BottomNavigationBarRoute()),
          orElse: () => null,
        ),
        builder: (context, state) => const Scaffold(body: SizedBox()),
      );
}
