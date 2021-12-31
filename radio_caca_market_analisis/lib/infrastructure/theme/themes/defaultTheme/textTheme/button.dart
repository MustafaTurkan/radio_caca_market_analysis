import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';

class Button implements IButton {
  Button(this.colors, this.data);
  ThemeData data;
  IAppColors colors;

  @override
  TextStyle? get accentBold => data.textTheme.button
      ?.copyWith(color: colors.fontAccent, fontWeight: FontWeight.w700);

  @override
  TextStyle? get accentLight => data.textTheme.button
      ?.copyWith(color: colors.fontAccent, fontWeight: FontWeight.w300);

  @override
  TextStyle? get accentRegular => data.textTheme.button
      ?.copyWith(color: colors.fontAccent, fontWeight: FontWeight.w400);

  @override
  TextStyle? get primaryBold =>
      data.textTheme.button?.copyWith(fontWeight: FontWeight.w700);

  @override
  TextStyle? get primaryLight =>
      data.textTheme.button?.copyWith(fontWeight: FontWeight.w300);

  @override
  TextStyle? get primaryRegular =>
      data.textTheme.button?.copyWith(fontWeight: FontWeight.w400);

  @override
  double? get size => data.textTheme.button?.fontSize;
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
