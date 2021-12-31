import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';

TextSelectionThemeData defaultTextSelectionTheme(DefaultThemeColors colors) {
  return TextSelectionThemeData(
      selectionColor: colors.canvasPrimaryPale,
      selectionHandleColor: colors.primary,
      cursorColor: colors.primary);
}
