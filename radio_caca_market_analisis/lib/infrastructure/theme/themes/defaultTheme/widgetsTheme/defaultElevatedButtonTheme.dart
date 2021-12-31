import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';
import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/defaultThemeTextStyles.dart';

ElevatedButtonThemeData defaultElevatedButtonTheme(
    DefaultThemeColors colors, DefaultThemeTextStyles textStyles) {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
          textStyles.button.accentBold!.copyWith(fontWeight: FontWeight.w600)),
      elevation: MaterialStateProperty.all<double>(0.5),
      shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return colors.fontAccent!;
          } else if (states.contains(MaterialState.disabled)) {
            return colors.fontAccent!.withOpacity(0.6);
          }
          return colors.fontAccent!;
        },
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return colors.primary!;
          } else if (states.contains(MaterialState.disabled)) {
            return colors.primary!.withOpacity(0.6);
          }
          return colors.primary!;
        },
      ),
    ),
  );
}
