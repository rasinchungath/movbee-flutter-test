import 'package:flutter/material.dart';
import 'package:machine_test/custom%20widgets/custom_button.dart';
import 'package:machine_test/custom%20widgets/logo.dart';
import 'package:machine_test/screens/login_screen.dart';
import '../constants/colors.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: kRedBGColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            bottom: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 340,
              ),
              const MovbeeLogo(),
              const SizedBox(
                height: 270,
              ),
              CustomButton(
                label: 'Get Started',
                buttonColor: kWhiteBGColor,
                onpressed: () {
                  Navigator.pushReplacementNamed(context, LoginScreen.id);
                },
                textColor: kRedBGColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
