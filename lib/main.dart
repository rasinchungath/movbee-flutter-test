import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import 'package:machine_test/provider/login_controller.dart';
import 'package:machine_test/screens/add_driver_screen.dart';
import 'package:machine_test/screens/bus_detail_screen.dart';
import 'package:machine_test/screens/driver_list.dart';
import 'package:machine_test/screens/home_screen.dart';
import 'package:machine_test/screens/login_screen.dart';
import 'package:machine_test/screens/second_detail_screen.dart';
import 'package:machine_test/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Controller()),
      ],
      child: MaterialApp(
        title: 'Bus List',
        theme: ThemeData(
          scaffoldBackgroundColor: kWhiteBGColor,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => const WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          HomeScreen.id: (context) => const HomeScreen(),
          BusDetailScreen.id: (context) => const BusDetailScreen(),
          SecondDetailScreen.id: (context) => const SecondDetailScreen(),
          DriversList.id: (context) => const DriversList(),
          AddDriverScreen.id: (context) => AddDriverScreen(),
        },
      ),
    );
  }
}
