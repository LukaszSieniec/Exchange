import 'package:auto_route/auto_route.dart';
import 'package:exchange/common/dependency_injection.dart';
import 'package:exchange/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:exchange/features/splash/presentation/splash_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => inject<SplashBloc>(),
        child: const SplashBody(),
      );
}
