import 'package:auto_route/auto_route.dart';
import 'package:exchange/features/dashboard/presentation/dashboard_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) => const DashboardBody();
}
