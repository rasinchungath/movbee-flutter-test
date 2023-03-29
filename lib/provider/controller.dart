import 'package:flutter/material.dart';
import 'package:machine_test/services/bus_services.dart';
import 'package:machine_test/services/login_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/refresh_token.dart';

class Controller extends ChangeNotifier {
  Map<String, dynamic>? data;
  Map<String, dynamic>? driverdata;
  Map<String, dynamic>? resaddDriver;
  Map<String, dynamic>? tokenResponse;
  String refreshtoken = '';

  Future<void> loginUser(String username, String password) async {
    data = await LoginServices().login(userName: username, password: password);
  }

  Future<void> getDriverList({
    required BuildContext context,
  }) async {
    driverdata = await BusServices().getDriverList(context: context);
    notifyListeners();
  }

  Future<void> addDriver({
    required String name,
    required String mobile,
    required String license_no,
    required BuildContext context,
  }) async {
    resaddDriver = await BusServices().addDriver(
        name: name, mobile: mobile, license_no: license_no, context: context);
    getDriverList(context: context);
    notifyListeners();
  }

  Future<void> deleteDriver(
      {required String driverId, required BuildContext context}) async {
    await BusServices().deleteDriver(driverId: driverId, context: context);
    getDriverList(context: context);
    notifyListeners();
  }

  Future<void> refreshToken()async {
    tokenResponse = await RefreshToken().refreshToken(refreshtoken);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('refresh_token', tokenResponse!['access']);


  }

  



}
