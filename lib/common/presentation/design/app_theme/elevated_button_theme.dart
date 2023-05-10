import 'package:exchange/common/presentation/design/app_palette.dart';
import 'package:exchange/common/presentation/design/app_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ElevatedButtonThemeData get elevatedButtonTheme => _buildElevatedButtonTheme();

ElevatedButtonThemeData _buildElevatedButtonTheme() => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppPalette.buttonDefault,
        disabledBackgroundColor: AppPalette.buttonDisabled,
        textStyle: TextStyle(
          color: AppPalette.textDefault,
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w500,
          fontFamily: appFontFamily,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            32.0.r,
          ),
        ),
      ),
    );
