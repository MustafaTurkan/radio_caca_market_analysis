import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/body1.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/body2.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/button.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/caption.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/headline4.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/overline.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/subtitle1.dart';
import 'package:radio_caca_market_analisis/infrastructure/theme/themes/defaultTheme/textTheme/subtitle2.dart';

import 'headline3.dart';
import 'headline5.dart';
import 'headline6.dart';

class DefaultThemeTextStyles implements IAppTextStyles {
  DefaultThemeTextStyles(this.data, this.colors);

  ThemeData data;
  IAppColors colors;

  ///Size 14
  @override
  IBody1 get body1 => Body1(colors, data);

  ///Size 13
  @override
  IBody2 get body2 => Body2(colors, data);

  ///Size 13
  @override
  IButton get button => Button(colors, data);

  ///Size 12
  @override
  ICaption get caption => Caption(colors, data);

  ///Size 40
  @override
  IHeadLine3 get headLine3 => HeadLine3(colors, data);

  ///Size 36
  @override
  IHeadLine4 get headLine4 => HeadLine4(colors, data);

  ///Size 24
  @override
  IHeadLine5 get headLine5 => HeadLine5(colors, data);

  ///Size 20
  @override
  IHeadLine6 get headLine6 => HeadLine6(colors, data);

  ///Size 11
  @override
  IOverline get overline => Overline(colors, data);

  ///Size 18
  @override
  ISubtitle1 get subtitle1 => SubTitle1(colors, data);

  ///Size 16
  @override
  ISubtitle2 get subtitle2 => SubTitle2(colors, data);
}
