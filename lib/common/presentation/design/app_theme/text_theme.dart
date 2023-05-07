// ignore_for_file: deprecated_member_use

import 'package:exchange/common/presentation/design/app_palette.dart';
import 'package:flutter/material.dart';

TextTheme get textTheme => _buildTextTheme();

const String appFontFamily = 'Urbanist';

TextTheme _buildTextTheme() => const TextTheme(
      /// Headline
      headline1: TextStyle(
        color: AppPalette.textDefault,
        fontSize: 32.0,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      headline2: TextStyle(
        color: AppPalette.textDefault,
        fontSize: 26.0,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      headline3: TextStyle(
        color: AppPalette.textDefault,
        fontSize: 24.0,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      headline4: TextStyle(
        color: AppPalette.textDefault,
        fontSize: 20.0,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      headline5: TextStyle(
        color: AppPalette.textDefault,
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      headline6: TextStyle(
        color: AppPalette.textDefault,
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),

      /// Subtitle
      subtitle1: TextStyle(
        color: AppPalette.textDefault,
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      subtitle2: TextStyle(
        color: AppPalette.textDefault,
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),

      /// Body
      bodyText1: TextStyle(
        color: AppPalette.textDefault,
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
      bodyText2: TextStyle(
        color: AppPalette.textDefault,
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        fontFamily: appFontFamily,
      ),
    );
