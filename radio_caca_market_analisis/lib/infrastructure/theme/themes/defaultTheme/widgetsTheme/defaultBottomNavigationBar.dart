import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';

BottomNavigationBarThemeData defaultBottomNavigationBarTheme(
    DefaultThemeColors colors) {
  return BottomNavigationBarThemeData(
      backgroundColor: colors.canvasAccent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: colors.primary,
      unselectedItemColor: colors.primary.withOpacity(0.7),
      selectedIconTheme: IconThemeData(size: 26, color: colors.primary),
      unselectedIconTheme:
          IconThemeData(size: 22, color: colors.primary.withOpacity(0.6)));
}
