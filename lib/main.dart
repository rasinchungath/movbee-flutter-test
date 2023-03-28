import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import 'package:machine_test/screens/bus_detail_screen.dart';
import 'package:machine_test/screens/home_screen.dart';
import 'package:machine_test/screens/login_screen.dart';
import 'package:machine_test/screens/welcome_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus List',
      theme: ThemeData(
        scaffoldBackgroundColor: kWhiteBGColor,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
       BusDetailScreen.id:  (context) => const  BusDetailScreen()
      },
    );
  }
}

class BusDetailsScreen {
}
