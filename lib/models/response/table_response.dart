// To parse this JSON data, do
//
//     final menusResponse = menusResponseFromJson(jsonString);

import 'dart:convert';

List<TableResponse> tableResponseFromJson(String str) =>
    List<TableResponse>.from(
        json.decode(str).map((x) => TableResponse.fromJson(x)));

String tableResponseToJson(List<TableResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TableResponse {
  TableResponse({
    this.id,
    this.number,
    this.status,
  });

  String id;
  int number;
  String status;

  factory TableResponse.fromJson(Map<String, dynamic> json) => TableResponse(
        id: json["id"],
        number: json["calories"],
        status: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "number": number,
        "status": status,
      };
}
