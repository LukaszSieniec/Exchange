import 'package:auto_route/auto_route.dart';
import 'package:exchange/common/dependency_injection.dart';
import 'package:exchange/features/bottom_navigation_bar/bottom_navigation_bar_body.dart';
import 'package:exchange/features/bottom_navigation_bar/cubit/bottom_navigation_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => inject<BottomNavigationBarCubit>(),
        child: BottomNavigationBarBody(),
      );
}
