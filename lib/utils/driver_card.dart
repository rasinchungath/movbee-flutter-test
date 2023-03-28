import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 158,
          height: 176,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kPrimaryColor,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 9,
          child: Image.asset(
            'assets/images/driver.png',
            height: 115,
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Driver',
                style: TextStyle(
                  color: kWhiteBGColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Manage your Driver',
                style: TextStyle(
                  color: kWhiteBGColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
