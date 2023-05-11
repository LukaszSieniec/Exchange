import 'package:exchange/common/presentation/design/app_palette.dart';
import 'package:flutter/material.dart';

/// Shadows for containers.
class AppShadows {
  static const BoxShadow bottomNavigationBarShadow = BoxShadow(
    color: AppPalette.white,
    offset: Offset(
      0.0,
      5.0,
    ),
    blurRadius: 15.0,
  );
}
