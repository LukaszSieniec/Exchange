import 'package:auto_route/auto_route.dart';
import 'package:exchange/features/home/presentation/home_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => const HomeBody();
}
