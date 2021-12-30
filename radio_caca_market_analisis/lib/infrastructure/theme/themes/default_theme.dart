import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';

class DefaultThemeColors extends IAppColors {
  //primartPale 0xffE8F0FE
  @override
  Color get accent => Colors.pinkAccent; //0xff003F8C
  @override
  Color get canvasDark => Colors.black;
  @override
  Color get canvas => const Color(0xffF1F3F4); //F8F6F6 , F2F2F2
  @override
  Color get canvasLight => const Color(0xffffffff);
  @override
  Color get disabled => fontPale.lighten(0.5);
  @override
  Color get divider => const Color(0xffDADCE0);
  @override
  Color get success => const Color(0xff3dc954).lighten(0.3);
  @override
  Color get error => const Color(0xfff54d53).lighten(0.3);
  @override
  Color get warning => const Color(0xfffd791c);
  @override
  Color get info => primary;
  @override
  Color get font => canvasDark;
  @override
  Color get fontPale => primary;
  @override
  Color get fontLight => const Color(0xffffffff);
  @override
  Color get primary => Colors.purple;
  @override
  Color get primaryPale => primary.lighten(0.30);
  @override
  Color get unselectedWidgetColor => fontPale;
  @override
  Color get toggleableActiveColor => primary;
  @override
  Color get inputFillColor => const Color(0xFFf2f6fd);

  //Inkwell
  @override
  Color get splash => const Color(0xffa9cbf7).withOpacity(0.5);
  @override
  Color get highlight => const Color(0xffa9cbf7).withOpacity(0.3);
}

class DefaultThemeTextStyles extends IAppTextStyles {
  DefaultThemeTextStyles(this.data, this.colors);
  ThemeData data;
  IAppColors colors;

  @override
  TextStyle get title => data.textTheme.headline6!;

  @override
  TextStyle get subtitleBold => data.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500);

  @override
  TextStyle get subtitle => data.textTheme.subtitle1!;

  @override
  TextStyle get body => data.textTheme.bodyText2!;

  @override
  TextStyle get bodyBold => data.textTheme.bodyText1!;

  @override
  TextStyle get caption => data.textTheme.caption!;

  @override
  TextStyle get overline => data.textTheme.overline!;

  @override
  TextStyle get h4PrimaryBold => data.textTheme.headline4!.copyWith(color: colors.primary, fontWeight: FontWeight.w700);

  @override
  TextStyle get h6Bold => data.textTheme.headline6!.copyWith(fontWeight: FontWeight.w700);
}

AppThemeData buildDefaultTheme(BuildContext context, {IAppColors? colors}) {
  //appbar spesific copy
  TextTheme _appBarTextTheme(
    TextTheme base,
    Color color,
    String fontFamily,
  ) {
    return ThemeUtils.textThemeCopyWith(base, color, fontFamily).copyWith(
      headline6: base.headline6!.copyWith(
        color: color,
        fontSize: base.headline6!.fontSize,
        fontWeight: FontWeight.normal,
        fontFamily: fontFamily,
      ),
    );
  }

  var fontFamily = 'Roboto';
  var buttonBorderRadius = BorderRadius.circular(18);
  var textBorderRadius = BorderRadius.circular(18);
  var cardBorderRadius = BorderRadius.circular(4);
  var appColors = colors ?? DefaultThemeColors();
  var baseTheme = Theme.of(context);
  var newTheme = ThemeData(
    fontFamily: fontFamily,
    primaryColor: appColors.primary,
    primaryColorLight: appColors.primary,
    primaryColorDark: appColors.primary,
    primaryColorBrightness: Brightness.dark,
    canvasColor: appColors.canvasLight,
    disabledColor: appColors.disabled,
    scaffoldBackgroundColor: appColors.canvasLight,
    highlightColor: appColors.highlight,
    splashColor: appColors.splash,
    dialogBackgroundColor: appColors.canvasLight,
    errorColor: appColors.error,
    indicatorColor: appColors.primary,
    unselectedWidgetColor: appColors.unselectedWidgetColor,
    toggleableActiveColor: appColors.toggleableActiveColor,

    toggleButtonsTheme: ToggleButtonsThemeData(
      constraints: const BoxConstraints(minWidth: kMinInteractiveDimension, minHeight: kMinInteractiveDimension * 0.8),
      borderRadius: buttonBorderRadius,
      color: appColors.font,
      selectedColor: appColors.primary,
      disabledColor: appColors.disabled,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      elevation: 0.5,
    ),

    chipTheme: ChipThemeData.fromDefaults(
      labelStyle: baseTheme.textTheme.bodyText2!,
      primaryColor: appColors.primary,
      secondaryColor: appColors.warning,
    ),
    textSelectionTheme: baseTheme.textSelectionTheme
        .copyWith(selectionHandleColor: appColors.primary, selectionColor: appColors.primary.lighten(0.8)),
    popupMenuTheme: const PopupMenuThemeData(elevation: 0.5),
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: appColors.primary, elevation: 0.5),
    dividerTheme: DividerThemeData(color: appColors.divider, space: 1),
    tabBarTheme: TabBarTheme(labelColor: appColors.primary, unselectedLabelColor: appColors.font),

    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: appColors.canvasDark),
      titleTextStyle: _appBarTextTheme(baseTheme.primaryTextTheme, appColors.font, fontFamily).subtitle1,
      color: appColors.canvasLight,
      elevation: 0.5,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: appColors.canvasLight,
      elevation: 1,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius),
    )),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius),
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius),
    )),
    //Text selection control hala bu temayı kullanıyor.
    buttonTheme: ButtonThemeData(
      buttonColor: appColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),

    cardTheme: CardTheme(
      margin: const EdgeInsets.all(1),
      color: appColors.canvasLight,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: cardBorderRadius),
    ),
    snackBarTheme: SnackBarThemeData(
        contentTextStyle: baseTheme.textTheme.bodyText2!.copyWith(color: appColors.fontLight),
        backgroundColor: appColors.info,
        elevation: 4,
        actionTextColor: appColors.fontLight),

    textTheme: ThemeUtils.textThemeCopyWith(baseTheme.textTheme, appColors.font, fontFamily),
    primaryTextTheme: ThemeUtils.textThemeCopyWith(baseTheme.primaryTextTheme, appColors.fontLight, fontFamily),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: appColors.font),
      hintStyle: TextStyle(color: appColors.fontPale.withOpacity(0.7)),
      helperStyle: TextStyle(color: appColors.fontPale),
      prefixStyle: TextStyle(color: appColors.fontPale),
      suffixStyle: TextStyle(color: appColors.fontPale),
      counterStyle: TextStyle(color: appColors.fontPale),
      errorStyle: TextStyle(color: appColors.error.withOpacity(0.7)),
      contentPadding: const EdgeInsets.all(10),
      fillColor: appColors.inputFillColor,
      filled: true,
      isDense: true,
      border: ThemeUtils.inputBorder(
        appColors.canvasDark,
        textBorderRadius,
      ),
      focusedBorder: ThemeUtils.inputBorder(
        appColors.primary.lighten(0.6),
        textBorderRadius,
      ),
      enabledBorder: ThemeUtils.inputBorder(
        appColors.canvasDark,
        textBorderRadius,
      ),
      errorBorder: ThemeUtils.inputBorder(
        appColors.error.lighten(0.7),
        textBorderRadius,
      ),
      focusedErrorBorder: ThemeUtils.inputBorder(
        appColors.error.lighten(0.5),
        textBorderRadius,
      ),
      disabledBorder: ThemeUtils.inputBorder(
        appColors.disabled,
        textBorderRadius,
      ),
    ),
    // snackBarTheme: baseTheme.snackBarTheme.copyWith(
    //     contentTextStyle: baseTheme.snackBarTheme.contentTextStyle
    //         .copyWith(color: appColors.fontDark)),
    colorScheme: ColorScheme(
      background: appColors.canvas,
      brightness: Brightness.light,
      error: appColors.error,
      primary: appColors.primary,
      primaryVariant: appColors.primary,
      secondary: appColors.accent,
      secondaryVariant: appColors.accent,
      surface: appColors.canvas,
      onBackground: appColors.font,
      onError: appColors.fontLight,
      onPrimary: appColors.fontLight,
      onSecondary: appColors.fontLight,
      onSurface: appColors.font,
    ),
    primaryIconTheme: IconThemeData(color: appColors.canvasLight),
    iconTheme: IconThemeData(color: appColors.canvasDark),
    //use cupertino slide effect
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android:  CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS:  CupertinoPageTransitionsBuilder(),
    }),
  );

  return AppThemeData(newTheme, appColors, DefaultThemeTextStyles(newTheme, appColors));
}

class AlternativeColors1 extends DefaultThemeColors {
  @override
  Color get accent => const Color(0xff2E4378);
  @override
  Color get primary => const Color(0xff0083FF);
  @override
  Color get canvasDark => const Color(0xffe7edf7);
  @override
  Color get canvas => const Color(0xffF6F8FC);
  @override
  Color get canvasLight => const Color(0xffffffff);
  @override
  Color get divider => const Color(0xffd9e1f2);
  @override
  Color get font => const Color(0xff2E4378);
  @override
  Color get fontPale => const Color(0xff8291b8);
}
