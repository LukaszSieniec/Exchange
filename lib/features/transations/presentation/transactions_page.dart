import 'package:auto_route/auto_route.dart';
import 'package:exchange/features/transations/presentation/transactions_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) => const TransactionsBody();
}
