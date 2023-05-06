import 'package:auto_route/auto_route.dart';
import 'package:exchange/features/wallet/presentation/wallet_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) => const WalletBody();
}
