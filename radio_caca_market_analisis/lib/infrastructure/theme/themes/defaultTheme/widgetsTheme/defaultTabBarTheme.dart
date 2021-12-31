import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/defaultThemeTextStyles.dart';

TabBarTheme defaultTabBarTheme(
    DefaultThemeColors colors, DefaultThemeTextStyles textStyles) {
  return TabBarTheme(
      labelStyle: textStyles.body2.primaryBold,
      unselectedLabelStyle: textStyles.body2.primaryRegular,
      labelColor: colors.primary,
      unselectedLabelColor: colors.primary,
      indicatorSize: TabBarIndicatorSize.tab);
}
