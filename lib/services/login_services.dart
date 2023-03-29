import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:machine_test/provider/controller.dart';

class LoginServices {
  Future<Map<String,dynamic>> login(
      {required String userName, required String password}) async {
    var client = http.Client();
    var baseurl = 'http://flutter.noviindus.co.in/api/';
    var loginurl = '${baseurl}LoginApi';
    var url = Uri.parse(loginurl);
    var data; 
    try {
      var response = await client.post(
        url,
        body: {
          'username': userName,
          'password': password,
        },
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(response.body);
        return data;
      }
    } catch (e) {
      print(e.toString());
      throw Exception('failed to login');
    }
    return data;
  }
}
