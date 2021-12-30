import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';

class AppException implements Exception {
  AppException({this.code = '', this.message = ''});

  String code;
  String message;

  @override
  String toString() {
    return message.isEmpty
        ? runtimeType.toString()
        : '${runtimeType.toString()}:$message';
  }

  static String getMessage(dynamic e) {
    return (e is AppException) ? e.message : AppString.unExpectedErrorOccurred;
  }
}
