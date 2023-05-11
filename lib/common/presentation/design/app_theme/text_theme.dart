// ignore_for_file: deprecated_member_use

import 'package:exchange/common/presentation/design/app_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextTheme get textTheme => _buildTextTheme();

const String appFontFamily = 'Urbanist';

TextTheme _buildTextTheme() => TextTheme(
      /// Headline
      headline1: TextStyle(
        color: AppPalette.white,
        fontSize: 32.0.sp,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      headline2: TextStyle(
        color: AppPalette.white,
        fontSize: 26.0.sp,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      headline3: TextStyle(
        color: AppPalette.white,
        fontSize: 24.0.sp,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      headline4: TextStyle(
        color: AppPalette.white,
        fontSize: 20.0.sp,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      headline5: TextStyle(
        color: AppPalette.white,
        fontSize: 18.0.sp,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      headline6: TextStyle(
        color: AppPalette.white,
        fontSize: 16.0.sp,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),

      /// Subtitle
      subtitle1: TextStyle(
        color: AppPalette.white,
        fontSize: 18.0.sp,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      subtitle2: TextStyle(
        color: AppPalette.white,
        fontSize: 16.0.sp,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),

      /// Body
      bodyText1: TextStyle(
        color: AppPalette.white,
        fontSize: 14.0.sp,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      bodyText2: TextStyle(
        color: AppPalette.white,
        fontSize: 12.0.sp,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
    );
