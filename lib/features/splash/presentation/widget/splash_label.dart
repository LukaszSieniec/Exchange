import 'package:exchange/features/splash/presentation/splash_body.dart';
import 'package:flutter/material.dart';

/// Displays the label on the [SplashBody].
class SplashLabel extends StatelessWidget {
  static const _label = 'D i N E R O';

  const SplashLabel({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          _label,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
        ),
      );
}
