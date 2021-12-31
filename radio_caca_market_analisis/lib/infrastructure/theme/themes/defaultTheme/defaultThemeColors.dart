import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';

class DefaultThemeColors extends IAppColors {
  ///rgb 255 255 255
  @override
  Color get fontAccent => const Color(0xffffffff);

  @override
  Color get fontPrimary => const Color(0xff22242a);

  ///rgb 77, 74, 88
  ///
  @override
  Color get fontPrimaryPale => const Color(0xff4D4A58);

  ///rgb 144 142 151
  @override
  Color get fontAccentPale => const Color(0xff908E97);

  @override
  Color get primary => const Color(0xff22242a);

  @override
  Color get accent => const Color(0xffffffff);

  ///rgb 255 31 31
  @override
  Color get error => const Color(0xffFF1F1F);

  @override

  ///rgb 255 255 255
  Color get canvasAccent => const Color(0xffffffff);

  @override

  ///rgb 144 142 151
  Color get canvasPrimary => const Color(0xff908E97);

  @override

  //rgb 244, 244, 245
  Color get canvasPrimaryPale => const Color(0xffF8F8F9);

  @override
  //rgb 248 248 249
  Color get canvasAccentPale => const Color(0xffF4F4F5);

  @override
  Color get disabledColor => Colors.black12;

  @override
  Color get succes => const Color(0xff0aca6e);
}
