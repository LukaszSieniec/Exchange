import 'package:exchange/common/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        children: [
          AppHeader(
            label: 'Home',
          ),
        ],
      );
}
