import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/response/menu_response.dart';
import 'api.dart';

class MenusService {
  static Future<List<MenusResponse>> getMenu() async {
    final String url = host + "/api/menus";
    var result = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    // Parse the JSON response and return a list of MenusResponse objects
    List<MenusResponse> menus = menusResponseFromJson(result.body);
    return menus;
  }
}
