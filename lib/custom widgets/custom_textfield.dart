import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintLabel,  required this.controller});
  final String hintLabel;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kTextFieldColor.withOpacity(0.1),
      ),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 10),
          border: InputBorder.none,
          hintText: hintLabel,
          hintStyle: const TextStyle(
            color: Color(0xFF707070),
            fontSize: 15,
            fontWeight: FontWeight.w500,
            textBaseline: TextBaseline.alphabetic,
          ),
        ),
      ),
    );
  }
}
