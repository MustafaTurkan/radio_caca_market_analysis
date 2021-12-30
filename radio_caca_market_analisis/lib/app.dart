import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:radio_caca_market_analisis/data/data.dart';
import 'package:radio_caca_market_analisis/domain/domain.dart';
import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';

class App {
  Future<void> buildAppServices() async {
    AppService.addSingleton<AppContext>(
      AppContext(),
    );

    AppService.addSingleton<AppNavigator>(
      AppNavigator(),
    );

    //database
    AppService.addSingleton<ApiProvider>(
      ApiProvider(AppService.get<AppContext>()),
    );
    var api = AppService.get<ApiProvider>();
    api.initialize();

    //repositories

    AppService.addTransient<ICategoryRepository>(
      () => CategoryRepository(api),
    );

    AppService.addTransient<ICategoryItemRepository>(
      () => CategoryItemRepository(api),
    );
  }

  void setSystemChromeSettings() {
    var style = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    );
    SystemChrome.setSystemUIOverlayStyle(style);
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  void run() async {
    if (kReleaseMode) {
      debugPrint = (message, {wrapWidth}) {};
    }

    WidgetsFlutterBinding.ensureInitialized();
    setSystemChromeSettings();
    await buildAppServices();
    runApp(const AppWidget('Movie'));
  }
}

class AppWidget extends StatefulWidget {
  const AppWidget(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  Localizer? localizer;

  @override
  void didChangeDependencies() {
    localizer = context.getLocalizer();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [..._providers()],
      builder: (context, child) {
        return MaterialApp(
            locale: context.get<AppLocale>(listen: true).locale,
            localizationsDelegates: _localizationsDelegates(),
            supportedLocales: _supportedLocales(),
            title: widget.title,
            builder: _builder,
            navigatorKey: AppNavigator.key,
            navigatorObservers: [AppNavigator.routeObserver],
            home: Container());
      },
    );
  }

  Widget _builder(BuildContext? context, Widget? child) {
    var theme = context!.getTheme(listen: true);
    if (!theme.initialized) {
      theme.setTheme(buildDefaultTheme(context));
    }

    return Theme(data: theme.data!, child: child!);
  }

  Iterable<LocalizationsDelegate<dynamic>> _localizationsDelegates() {
    return [
      const AppLocalizationsDelegate(),
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ];
  }

  Iterable<Locale> _supportedLocales() {
    return AppLocale.supportedLocales;
  }

  String? _getUserLanguage() {
    return null;
  }

  List<SingleChildWidget> _providers() {
    Provider.debugCheckInvalidValueType = null;
    return [
      ChangeNotifierProvider<AppTheme>(
        create: (_) => AppTheme(),
      ),
      ChangeNotifierProvider<AppLocale>(
        create: (_) => AppLocale(languageCode: _getUserLanguage()),
      ),
    ];
  }
}
