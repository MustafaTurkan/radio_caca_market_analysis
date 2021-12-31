import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/defaultThemeTextStyles.dart';

OutlinedButtonThemeData defaultOutlinedButtonTheme(
    DefaultThemeColors colors, DefaultThemeTextStyles textStyles) {
  return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0.5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          primary: colors.primary,
          backgroundColor: colors.accent,
          side: BorderSide(color: colors.primary, width: 0.5),
          textStyle: textStyles.button.accentRegular));
}
