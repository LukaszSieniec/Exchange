import 'package:exchange/common/presentation/design/app_palette.dart';
import 'package:exchange/common/presentation/design/app_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

OutlinedButtonThemeData get outlinedButtonTheme => _buildOutlinedButtonTheme();

OutlinedButtonThemeData _buildOutlinedButtonTheme() => OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppPalette.backgroundDefault,
        textStyle: TextStyle(
          color: AppPalette.greenBright,
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w500,
          fontFamily: appFontFamily,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0.r),
        ),
        side: BorderSide(
          color: AppPalette.greenBright,
          width: 1.5.r,
        ),
      ),
    );
