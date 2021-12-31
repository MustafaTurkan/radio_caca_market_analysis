import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';
import 'package:flutter/material.dart';

CheckboxThemeData defaultCheckboxTheme(DefaultThemeColors colors) {
  return CheckboxThemeData(
      fillColor: MaterialStateProperty.all(colors.primary), splashRadius: 5);
}
