// To parse this JSON data, do
//
//     final menusResponse = menusResponseFromJson(jsonString);

import 'dart:convert';

List<MenusResponse> menusResponseFromJson(String str) =>
    List<MenusResponse>.from(
        json.decode(str).map((x) => MenusResponse.fromJson(x)));

String menusResponseToJson(List<MenusResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MenusResponse {
  MenusResponse({
    this.id,
    this.calories,
    this.image,
    this.name,
    this.price,
  });

  String id;
  int calories;
  String image;
  String name;
  int price;

  factory MenusResponse.fromJson(Map<String, dynamic> json) => MenusResponse(
        id: json["id"],
        calories: json["calories"],
        image: json["image"],
        name: json["name"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "calories": calories,
        "image": image,
        "name": name,
        "price": price,
      };
}
