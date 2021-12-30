// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';

class Category {
  Category({
    this.id,
    this.name,
    this.totalItemCount,
    this.floorPrice,
  });

  int? id;
  String? name;
  int? totalItemCount;
  double? floorPrice;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json.getValue<int>('id'),
        name: json.getValue<String>('name'),
        totalItemCount: json.getValue<int>('totalItemCount'),
        floorPrice: json.getValue<double>('floorPrice'),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "totalItemCount": totalItemCount,
        "floorPrice": floorPrice,
      };
}
