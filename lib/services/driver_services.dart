import 'dart:convert';

import 'package:http/http.dart' as http;

class DriversLists{

  Future<List<Map<String, dynamic>>> getDriversList(String apiKey) async {
  var baseurl = 'http://flutter.noviindus.co.in/api/';
  var url = '${baseurl}DriverApi/$apiKey/';
  var response = await http.get(Uri.parse(url),);

  if (response.statusCode == 200) {
    var responseData = json.decode(response.body);
    List<Map<String, dynamic>> driversList = [];

    for (final driver in responseData) {
      driversList.add(driver);
    }

    return driversList;
  } else {
    throw Exception('Failed to get drivers list.');
  }
}

}

