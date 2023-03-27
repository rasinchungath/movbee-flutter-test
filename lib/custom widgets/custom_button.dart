import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.label,
      required this.buttonColor,
      required this.onpressed,
      required this.textColor});
  final String label;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: onpressed,
        child: Text(
          label,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500,
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}
