import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import 'package:machine_test/custom%20widgets/custom_button.dart';
import 'package:machine_test/screens/bus_list_screen.dart';

import '../custom widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kWhiteBGColor,
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
          CustomTextField(hintLabel: 'Enter Username',),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(hintLabel: 'Enter Password',),
          const SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,),
            child: CustomButton(label: 'Login',  
            buttonColor: kRedBGColor, 
            onpressed: (){
              Navigator.pushReplacementNamed(context, BusListScreen.id);
            }, 
            textColor: kWhiteBGColor,),
          ),
          

         
        ],
      ),
    );
  }
}
