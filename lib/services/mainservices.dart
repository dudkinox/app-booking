import 'dart:convert';
import 'package:http/http.dart' as http;

class APIservices {
  static Future<dynamic> SignUp(
      String username,
      String email,
      String password,
      String sex,
      String fullname,
      String weight,
      String height,
      String Birthday,
      String phonenumber) async {
    final String url = "https://api-kyp.onrender.com/api/register";
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, dynamic>{
          "username": username,
          "email": email,
          "password": password,
          "sex": sex,
          "fullname": fullname,
          "weight": weight,
          "height": height,
          "Birthday": Birthday,
          "phonenumber": phonenumber
        },
      ),
    );
    return true;
  }
}
