import 'package:exchange/common/presentation/design/app_palette.dart';
import 'package:flutter/material.dart';

ColorScheme get colorScheme => _buildColorScheme();

ColorScheme _buildColorScheme() => const ColorScheme(
      brightness: Brightness.light,

      /// Primary
      primary: AppPalette.backgroundDefault,
      onPrimary: AppPalette.textDefault,

      /// Secondary
      secondary: AppPalette.backgroundDefault,
      onSecondary: AppPalette.textDefault,

      /// Error
      error: AppPalette.red,
      onError: AppPalette.red,

      /// Background
      background: AppPalette.backgroundDefault,
      onBackground: AppPalette.backgroundDefault,

      /// Surface
      surface: AppPalette.backgroundDefault,
      onSurface: AppPalette.backgroundDefault,
    );
