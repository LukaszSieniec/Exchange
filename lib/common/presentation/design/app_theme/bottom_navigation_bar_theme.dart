import 'package:exchange/common/presentation/design/app_palette.dart';
import 'package:exchange/common/presentation/design/app_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

BottomNavigationBarThemeData get bottomNavigationBarTheme =>
    _buildBottomNavigationBarTheme();

BottomNavigationBarThemeData _buildBottomNavigationBarTheme() =>
    BottomNavigationBarThemeData(
      backgroundColor: AppPalette.backgroundDefault,
      selectedLabelStyle: TextStyle(
        color: AppPalette.greenBright,
        fontSize: 12.0.sp,
        fontWeight: FontWeight.w600,
        fontFamily: appFontFamily,
      ),
      unselectedLabelStyle: TextStyle(
        color: AppPalette.grayBright,
        fontSize: 12.0.sp,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
    );
