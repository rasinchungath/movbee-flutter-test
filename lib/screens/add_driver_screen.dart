import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import 'package:machine_test/custom%20widgets/custom_textfield.dart';
import '../custom widgets/custom_button.dart';
import '../utils/appbars.dart';

class AddDriverScreen extends StatelessWidget {
  static const String id = 'addDriver_screen';
  const AddDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: busDetailAppbar(
        context,
        'Add Driver',
        82,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomTextField(hintLabel: 'Enter Name'),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(hintLabel: 'Enter License Number'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomButton(
              label: 'Save',
              buttonColor: kRedBGColor,
              onpressed: () {},
              textColor: kWhiteBGColor,
            ),
          )
        ],
      ),
    );
  }
}
