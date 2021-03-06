import 'package:flutter/widgets.dart';

abstract class IAppColors {
  Color? get primary;
  Color? get accent;
  Color? get canvasPrimary;
  Color? get canvasAccent;
  Color? get canvasAccentPale;
  Color? get fontPrimary;
  Color? get fontAccent;
  Color? get fontAccentPale;
  Color? get fontPrimaryPale;
  Color? get error;
  Color? get succes;
  Color? get canvasPrimaryPale;
  Color? get disabledColor;
}

Color darken(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  var f = 1 - percent / 100;
  return Color.fromARGB(c.alpha, (c.red * f).round(), (c.green * f).round(),
      (c.blue * f).round());
}

Color brighten(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  var p = percent / 100;
  return Color.fromARGB(
      c.alpha,
      c.red + ((255 - c.red) * p).round(),
      c.green + ((255 - c.green) * p).round(),
      c.blue + ((255 - c.blue) * p).round());
}
