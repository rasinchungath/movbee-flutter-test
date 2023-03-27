import 'package:flutter/material.dart';
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
    return const MaterialApp(
      title: 'Bus List',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
