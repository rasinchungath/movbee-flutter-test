import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../provider/login_controller.dart';

class BusServices {
  Future<void> getBusList({
    required BuildContext context,
  }) async {
    final pro = Provider.of<Controller>(context, listen: false);
    var urlId = pro.data!['url_id'];
    var token = pro.data!['access'];

    var url =
        Uri.parse('http://flutter.noviindus.co.in/api/BusListApi/$urlId/');
    try {
      final response = await http.get(url, headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print('bus list = $data');
        print(data['bus_list']);
      }
    } catch (e) {
      throw Exception('failed to bus list');
    }
  }

  Future getDriverList({
    required BuildContext context,
  }) async {
    final pro = Provider.of<Controller>(context, listen: false);
    var urlId = pro.data!['url_id'];
    var token = pro.data!['access'];
    var url = Uri.parse('http://flutter.noviindus.co.in/api/DriverApi/$urlId/');
    try {
      final response = await http.get(url, headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data);
        print(data["driver_list"][0]['id']);
        return data;
      }
    } catch (e) {
      throw Exception('failed to bus list');
    }
  }

  Future addDriver(
      {required String name,
      required String mobile,
      required String license_no,
      required BuildContext context}) async {
    final pro = Provider.of<Controller>(context, listen: false);
    var urlId = pro.data!['url_id'];
    var token = pro.data!['access'];
    var url = Uri.parse('http://flutter.noviindus.co.in/api/DriverApi/$urlId/');
    final headers = <String, String>{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final body = json.encode({
      "name": name,
      "mobile": mobile,
      "license_no": license_no,
    });
    try {
      final response = await http.post(url, headers: headers, body: body,);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data);
        return data;
      }
    } catch (e) {
      throw Exception('failed to add driver');
    }
  }


  Future deleteDriver({required String driverId, required BuildContext context}) async {

    final pro = Provider.of<Controller>(context, listen: false);
    var urlId = pro.data!['url_id'];
    var token = pro.data!['access'];
    var url = Uri.parse('http://flutter.noviindus.co.in/api/DriverApi/$urlId/');
    final headers = <String, String>{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
     final body = json.encode({
      "driver_id": driverId,
      
    });
    try {
      final response = await http.delete(url, headers: headers, body: body,);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data);
        return data;
      }
    } catch (e) {
      throw Exception('failed to delete driver');
    }
   

  }




}
