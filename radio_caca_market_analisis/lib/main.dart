import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_caca_market_analisis/app.dart';
import 'package:radio_caca_market_analisis/domain/domain.dart';

void main() async {
  BlocOverrides.runZoned(
    () => App().run(),
    blocObserver: AppBlocObserver(),
  );
}
