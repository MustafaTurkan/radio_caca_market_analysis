import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';

CardTheme defaultCardTheme(DefaultThemeColors colors) {
  return CardTheme(
      elevation: 0,
      color: colors.canvasPrimaryPale,
      shape: RoundedRectangleBorder());
}
