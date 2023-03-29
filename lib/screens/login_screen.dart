import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import 'package:machine_test/custom%20widgets/custom_button.dart';
import 'package:machine_test/custom%20widgets/snackbar.dart';
import 'package:machine_test/provider/controller.dart';
import 'package:machine_test/screens/home_screen.dart';
import 'package:machine_test/services/bus_services.dart';
import 'package:provider/provider.dart';

import '../custom widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';
  LoginScreen({super.key});
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginUser = Provider.of<Controller>(context, listen: false);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 266,
                color: kPrimaryColor,
              ),
              Image.asset('assets/images/redpolygon.png'),
              Positioned(
                top: 127,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        color: kWhiteBGColor,
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Manage your Bus and Drivers',
                      style: TextStyle(
                        color: kWhiteBGColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            controller: usernameController,
            hintLabel: 'Enter Username',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            controller: passwordController,
            hintLabel: 'Enter Password',
          ),
          const SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: CustomButton(
              label: 'Login',
              buttonColor: kRedBGColor,
              onpressed: () async {
                if (usernameController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty) {
                  await loginUser.loginUser(
                      usernameController.text, passwordController.text);

                  if (loginUser.data!['status'] == true) {
                    await BusServices().getBusList(
                      context: context
                    );

                    Navigator.pushReplacementNamed(context, HomeScreen.id);
                  } else {
                    showSnackBar(context, 'verification failed');
                  }
                } else {
                  showSnackBar(context, 'Enter correct username and password');
                }
              },
              textColor: kWhiteBGColor,
            ),
          ),
        ],
      ),
    );
  }
}
