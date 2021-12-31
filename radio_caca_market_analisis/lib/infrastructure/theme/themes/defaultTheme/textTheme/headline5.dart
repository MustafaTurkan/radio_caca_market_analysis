import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';

class HeadLine5 implements IHeadLine5 {
  HeadLine5(this.colors, this.data);
  ThemeData data;
  IAppColors colors;

  @override
  TextStyle? get accentBold => data.textTheme.headline5
      ?.copyWith(color: colors.fontAccent, fontWeight: FontWeight.w700);

  @override
  TextStyle? get accentLight => data.textTheme.headline5
      ?.copyWith(color: colors.fontAccent, fontWeight: FontWeight.w300);

  @override
  TextStyle? get accentRegular => data.textTheme.headline5
      ?.copyWith(color: colors.fontAccent, fontWeight: FontWeight.w400);

  @override
  TextStyle? get primaryBold =>
      data.textTheme.headline5?.copyWith(fontWeight: FontWeight.w700);

  @override
  TextStyle? get primaryLight =>
      data.textTheme.headline5?.copyWith(fontWeight: FontWeight.w300);

  @override
  TextStyle? get primaryRegular =>
      data.textTheme.headline5?.copyWith(fontWeight: FontWeight.w400);

  @override
  double? get size => data.textTheme.headline5?.fontSize;
}

/*
  FontWeight.w100: 'Thin',
  FontWeight.w200: 'ExtraLight',
  FontWeight.w300: 'Light',
  FontWeight.w400: 'Regular',
  FontWeight.w500: 'Medium',
  FontWeight.w600: 'SemiBold',
  FontWeight.w700: 'Bold',
  FontWeight.w800: 'ExtraBold',
  FontWeight.w900: 'Black',
  
 */
