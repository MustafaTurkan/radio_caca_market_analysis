import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';

FloatingActionButtonThemeData defaultFabTheme(
  DefaultThemeColors colors,
) {
  return FloatingActionButtonThemeData(
      elevation: 0.5,
      backgroundColor: colors.primary,
      foregroundColor: colors.accent);
}
