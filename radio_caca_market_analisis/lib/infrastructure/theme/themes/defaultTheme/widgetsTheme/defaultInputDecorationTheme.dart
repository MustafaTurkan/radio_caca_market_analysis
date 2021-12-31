import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/defaultThemeTextStyles.dart';

InputDecorationTheme defaultInputDecorationTheme(
    DefaultThemeColors colors, DefaultThemeTextStyles textStyles) {
  InputBorder border() {
    return UnderlineInputBorder(borderSide: BorderSide(color: colors.primary!));
  }

  return InputDecorationTheme(
    errorStyle: textStyles.overline.error,
    helperStyle: textStyles.overline.label,
    labelStyle: textStyles.overline.label,
    enabledBorder: border(),
    disabledBorder: border(),
    border: border(),
    focusedBorder: border(),
  );
}
