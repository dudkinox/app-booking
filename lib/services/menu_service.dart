import 'dart:convert';
import 'package:http/http.dart' as http;

import '../common/to_boolean.dart';
import '../models/response/menu_response.dart';
import 'api.dart';

class MenusService {
  static Future<MenusResponse> getMenu() async {
    final String url = host + "/api/menus";
    var result = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    return MenusResponse.fromJson(jsonDecode(result.body));
  }
}
