import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';

extension BuildContextExtensions on BuildContext {
  T get<T>({bool listen = false}) => Provider.of<T>(this, listen: listen);
  T getBloc<T extends Cubit<dynamic>>() => BlocProvider.of<T>(this);

  AppTheme getTheme({bool listen = false}) =>
      Provider.of<AppTheme>(this, listen: listen);
  Localizer? getLocalizer() => Localizer.of(this);
  FocusScopeNode getFocusScope() => FocusScope.of(this);
  MediaQueryData getMediaQuery({bool nullOk = false}) => MediaQuery.of(this);
  IAppColors? getColors({bool listen = false}) =>
      Provider.of<AppTheme>(this, listen: listen).colors;

  /// body1 size=14, body2 size=13, button size=13, caption size=12,headLine3 size=40,headLine4 size=36, headLine5 Size=24, headLine6 Size=20, overline size=11, subtitle1 size=18, subtitle2 size=16
  /// exam body1.accentBold size.Color+Weight
  IAppTextStyles? getTextStyles({bool listen = false}) =>
      Provider.of<AppTheme>(this, listen: listen).textStyles;
}
