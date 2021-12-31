import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';

RadioThemeData defaultRadioTheme(DefaultThemeColors colors) {
  return RadioThemeData(
      fillColor: MaterialStateProperty.all(colors.primary), splashRadius: 5);
}
