import 'package:auto_route/auto_route.dart';
import 'package:exchange/common/dependency_injection.dart';
import 'package:exchange/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:exchange/features/dashboard/presentation/bloc/dashboard_event.dart';
import 'package:exchange/features/dashboard/presentation/dashboard_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => inject<DashboardBloc>()
          ..add(const DashboardEvent.fetchedTrending()),
        child: const DashboardBody(),
      );
}
