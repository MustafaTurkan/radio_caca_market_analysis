import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/defaultThemeColors.dart';

AppBarTheme defaultAppBarTheme(DefaultThemeColors colors, TextTheme textTheme) {
  return AppBarTheme(
    centerTitle: true,
    backgroundColor: colors.canvasAccent,
    elevation: 0,
    // toolbarTextStyle: textTheme.headline6,
    // textTheme: textTheme,
    titleTextStyle: textTheme.subtitle1,
    iconTheme: IconThemeData(
      color: colors.primary,
      size: 24,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  );
}
