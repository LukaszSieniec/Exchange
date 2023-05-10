import 'package:exchange/common/presentation/design/app_palette.dart';
import 'package:exchange/common/presentation/design/app_theme/app_bar_theme.dart';
import 'package:exchange/common/presentation/design/app_theme/bottom_navigation_bar_theme.dart';
import 'package:exchange/common/presentation/design/app_theme/color_scheme.dart';
import 'package:exchange/common/presentation/design/app_theme/elevated_button_theme.dart';
import 'package:exchange/common/presentation/design/app_theme/outlined_button_theme.dart';
import 'package:exchange/common/presentation/design/app_theme/text_theme.dart';
import 'package:flutter/material.dart';

ThemeData get appTheme => _buildAppTheme();

ThemeData _buildAppTheme() => ThemeData(
      elevatedButtonTheme: elevatedButtonTheme,
      outlinedButtonTheme: outlinedButtonTheme,
      textTheme: textTheme,
      bottomNavigationBarTheme: bottomNavigationBarTheme,
      appBarTheme: appBarTheme,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppPalette.backgroundDefault,
    );
