import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import 'package:machine_test/custom%20widgets/custom_textfield.dart';
import 'package:provider/provider.dart';
import '../custom widgets/custom_button.dart';
import '../provider/login_controller.dart';
import '../utils/appbars.dart';

class AddDriverScreen extends StatelessWidget {
  static const String id = 'addDriver_screen';
  AddDriverScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController lisenceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
     final pro = Provider.of<Controller>(context, listen: false);

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
              CustomTextField(
                controller:nameController ,
                hintLabel: 'Enter Name',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: lisenceController,
                hintLabel: 'Enter License Number',
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomButton(
              label: 'Save',
              buttonColor: kRedBGColor,
              onpressed: () async {
                await pro.addDriver(name: nameController.text, mobile: '123456', license_no: lisenceController.text, context: context);
                Navigator.pop(context);
              },
              textColor: kWhiteBGColor,
            ),
          )
        ],
      ),
    );
  }
}
