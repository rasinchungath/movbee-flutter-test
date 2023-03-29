import 'dart:convert';
import 'package:http/http.dart' as http;


class RefreshToken{
  Future<Map<String, dynamic>> refreshToken(String refreshToken) async {
  final url = 'http://flutter.noviindus.co.in/api/api/token/refresh/';
  final response = await http.post(
    Uri.parse(url),
    body: {'refresh': refreshToken},
  );

  if (response.statusCode == 200) {
    final responseData = json.decode(response.body);
    print(responseData);
    return responseData;
    
  } else {
    throw Exception('Failed to refresh token.');
  }
}
}