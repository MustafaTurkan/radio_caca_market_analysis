import 'package:flutter/material.dart';
import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';

class Overline implements IOverline {
  Overline(this.colors, this.data);
  ThemeData data;
  IAppColors colors;

  @override
  TextStyle? get accentBold => data.textTheme.caption?.copyWith(
      fontSize: 11, color: colors.fontAccent, fontWeight: FontWeight.w700);

  @override
  TextStyle? get accentLight => data.textTheme.caption?.copyWith(
      fontSize: 11, color: colors.fontAccent, fontWeight: FontWeight.w300);

  @override
  TextStyle? get accentRegular => data.textTheme.caption?.copyWith(
      fontSize: 11, color: colors.fontAccent, fontWeight: FontWeight.w400);

  @override
  TextStyle? get primaryBold => data.textTheme.caption
      ?.copyWith(fontSize: 11, fontWeight: FontWeight.w700);

  @override
  TextStyle? get primaryLight => data.textTheme.caption
      ?.copyWith(fontSize: 11, fontWeight: FontWeight.w300);

  @override
  TextStyle? get primaryRegular => data.textTheme.caption
      ?.copyWith(fontSize: 11, fontWeight: FontWeight.w400);

  @override
  double get size => 11;

  @override
  TextStyle? get error => data.textTheme.caption?.copyWith(
      color: colors.error, fontSize: 11, fontWeight: FontWeight.w400);

  @override
  TextStyle? get label => data.textTheme.caption?.copyWith(
      color: colors.fontPrimaryPale, fontSize: 11, fontWeight: FontWeight.w400);
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
