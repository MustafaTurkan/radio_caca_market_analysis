import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';

class Property {
  Property({
    this.key,
    this.value,
  });

  String? key;
  String? value;

  factory Property.fromJson(Map<String, dynamic> json) => Property(
        key: json.getValue<String>('key'),
        value: json.getValue<String>('value'),
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
      };
}
