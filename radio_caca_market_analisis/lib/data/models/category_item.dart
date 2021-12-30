// To parse this JSON data, do
//
//     final categoryItem = categoryItemFromJson(jsonString);

import 'package:radio_caca_market_analisis/data/data.dart';

import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';

class CategoryItem {
  CategoryItem({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.imageUrl,
    this.count,
    this.fixedPrice,
    this.totalPrice,
    this.saleAddress,
    this.idInContract,
    this.tokenId,
    this.tokenStandard,
    this.owner,
    this.nftAddress,
    this.blockChain,
    this.startTime,
    this.status,
    this.properties,
  });

  int? id;
  String? name;
  String? description;
  String? createdAt;
  String? imageUrl;
  int? count;
  String? fixedPrice;
  String? totalPrice;
  String? saleAddress;
  String? idInContract;
  int? tokenId;
  String? tokenStandard;
  String? owner;
  String? nftAddress;
  String? blockChain;
  int? startTime;
  String? status;
  List<Property>? properties;

  factory CategoryItem.fromJson(Map<String, dynamic> json) => CategoryItem(
        id: json.getValue<int>('id'),
        name: json.getValue<String>('name'),
        description: json.getValue<String>('description'),
        createdAt: json.getValue<String>('createdAt'),
        imageUrl: json.getValue<String>('imageUrl'),
        count: json.getValue<int>('count'),
        fixedPrice: json.getValue<String>('fixedPrice'),
        totalPrice: json.getValue<String>('totalPrice'),
        saleAddress: json.getValue<String>('saleAddress'),
        idInContract: json.getValue<String>('idInContract'),
        tokenId: json.getValue<int>('tokenId'),
        tokenStandard: json.getValue<String>('tokenStandard'),
        owner: json.getValue<String>('owner'),
        nftAddress: json.getValue<String>('nftAddress'),
        blockChain: json.getValue<String>('blockChain'),
        startTime: json.getValue<int>('startTime'),
        status: json.getValue<String>('status'),
        properties: List<Property>.from(
            json["properties"].map((x) => Property.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "createdAt": createdAt,
        "imageUrl": imageUrl,
        "count": count,
        "fixedPrice": fixedPrice,
        "totalPrice": totalPrice,
        "saleAddress": saleAddress,
        "idInContract": idInContract,
        "tokenId": tokenId,
        "tokenStandard": tokenStandard,
        "owner": owner,
        "nftAddress": nftAddress,
        "blockChain": blockChain,
        "startTime": startTime,
        "status": status,
        "properties":
            List<dynamic>.from(properties!.map((Property? x) => x?.toJson())),
      };
}
