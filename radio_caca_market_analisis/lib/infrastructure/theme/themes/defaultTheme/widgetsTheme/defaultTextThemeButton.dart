import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/defaultThemeTextStyles.dart';

TextButtonThemeData defaultTextButtonTheme(
    DefaultThemeColors colors, DefaultThemeTextStyles textStyles) {
  return TextButtonThemeData(
      style: TextButton.styleFrom(
          primary: colors.fontPrimary,
          textStyle: textStyles.body2.primaryBold));
}
