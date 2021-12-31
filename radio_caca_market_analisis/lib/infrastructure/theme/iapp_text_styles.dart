import 'package:flutter/material.dart';

abstract class IAppTextStyles {
  IHeadLine3 get headLine3;
  IHeadLine4 get headLine4;
  IHeadLine5 get headLine5;
  IHeadLine6 get headLine6;
  IBody1 get body1;
  IBody2 get body2;
  IButton get button;
  ICaption get caption;
  IOverline get overline;
  ISubtitle1 get subtitle1;
  ISubtitle2 get subtitle2;
}

abstract class BaseTextStyle {
  double? get size;
  //color-weight
  TextStyle? get primaryRegular;
  TextStyle? get primaryBold;
  TextStyle? get primaryLight;
  TextStyle? get accentRegular;
  TextStyle? get accentBold;
  TextStyle? get accentLight;
}

abstract class IHeadLine3 implements BaseTextStyle {}

abstract class IHeadLine4 implements BaseTextStyle {}

abstract class IHeadLine5 implements BaseTextStyle {}

abstract class IHeadLine6 implements BaseTextStyle {}

abstract class ISubtitle1 implements BaseTextStyle {}

abstract class ISubtitle2 implements BaseTextStyle {}

abstract class IBody1 implements BaseTextStyle {}

abstract class IBody2 implements BaseTextStyle {}

abstract class IButton implements BaseTextStyle {}

abstract class ICaption implements BaseTextStyle {}

abstract class IOverline implements BaseTextStyle {
  TextStyle? get label;
  TextStyle? get error;
}

/*
36 Size,rgb 255 255 255,Mulish-ExtraBold,HeadLine4

24 Size,rgb 255 255 255,Mulish-ExtraBold,Headline5

18 Size,rgb 34 36 42,normal,Mulish-Regular, headline6


bodyText2
14 Size,rgb 34 36 42,Mulish-Regular
14 Size,rgb 34 36 42,Mulish-Bold
14 Size,rgb 34 36 42,Mulish-Light
14 Size,rgb 34 36 42,Mulish-SemiBold
14 Size,rgb 255 255 255,Mulish-Regular
14 Size,rgb 255 255 255,Mulish-ExtraBold

caption
13 Size,rgb 255 255 255,Mulish-ExtraBold
13 Size,rgb 34 36 42,Mulish-Bold
13 Size,rgb 34 36 42,Mulish-Regular
13 Size,rgp 144 142 151,Mulish-Regular


overline
12 Size,rgb 34 36 42,Mulish-Regular
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
