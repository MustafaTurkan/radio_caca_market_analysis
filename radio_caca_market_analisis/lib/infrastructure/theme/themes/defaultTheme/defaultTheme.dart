import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/defaultThemeTextStyles.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/widgetsTheme/widgetsTheme.dart';

AppThemeData buildDefaultTheme(BuildContext context) {
  var fontFamily = 'Mulish';
  var appColors = DefaultThemeColors();
  var baseTheme = Theme.of(context);
  var initialTheme = ThemeData.light().copyWith(
    textTheme: ThemeUtils.textThemeCopyWith(
        baseTheme.textTheme, appColors.primary!, fontFamily),
  );

  var textStyles = DefaultThemeTextStyles(initialTheme, appColors);
  var defaultTheme = initialTheme.copyWith(
      primaryColor: appColors.primary,
      colorScheme:
          initialTheme.colorScheme.copyWith(secondary: appColors.accent),
      primaryColorLight: appColors.accent,
      primaryColorBrightness: Brightness.light,
      brightness: Brightness.light,
      // accentColorBrightness: Brightness.light,
      errorColor: appColors.error,
      disabledColor: appColors.disabledColor,
      indicatorColor: appColors.primary,
      canvasColor: appColors.canvasAccent,
      unselectedWidgetColor: appColors.canvasPrimary,
      selectedRowColor: appColors.primary,
      toggleableActiveColor: appColors.primary,
      scaffoldBackgroundColor: appColors.canvasAccent,
      cupertinoOverrideTheme: CupertinoThemeData(
          barBackgroundColor: appColors.canvasAccent,
          primaryColor: appColors.primary),
      cardColor: appColors.canvasPrimaryPale,
      backgroundColor: appColors.canvasAccent,
      appBarTheme: defaultAppBarTheme(appColors, initialTheme.textTheme),
      tabBarTheme: defaultTabBarTheme(appColors, textStyles),
      checkboxTheme: defaultCheckboxTheme(appColors),
      radioTheme: defaultRadioTheme(appColors),
      bottomNavigationBarTheme: defaultBottomNavigationBarTheme(appColors),
      elevatedButtonTheme: defaultElevatedButtonTheme(appColors, textStyles),
      floatingActionButtonTheme: defaultFabTheme(appColors),
      outlinedButtonTheme: defaultOutlinedButtonTheme(appColors, textStyles),
      inputDecorationTheme: defaultInputDecorationTheme(appColors, textStyles),
      textSelectionTheme: defaultTextSelectionTheme(appColors),
      cardTheme: defaultCardTheme(appColors),
      iconTheme: defaultIconTheme(appColors, initialTheme),
      primaryIconTheme: defaultIconTheme(appColors, initialTheme),
      // accentIconTheme: defaultIconTheme(appColors, initialTheme),
      textButtonTheme: defaultTextButtonTheme(appColors, textStyles));

  return AppThemeData(
      defaultTheme, appColors, DefaultThemeTextStyles(defaultTheme, appColors));
}
