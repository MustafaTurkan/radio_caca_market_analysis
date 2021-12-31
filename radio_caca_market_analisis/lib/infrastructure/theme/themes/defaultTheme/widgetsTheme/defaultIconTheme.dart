import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';

IconThemeData defaultIconTheme(DefaultThemeColors colors, ThemeData data) {
  return data.iconTheme.copyWith(color: colors.primary);
}
