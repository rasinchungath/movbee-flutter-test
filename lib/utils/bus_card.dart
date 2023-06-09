import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../screens/bus_detail_screen.dart';


class BusCard extends StatelessWidget {
  const BusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 158,
          height: 176,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kRedBGColor,
          ),
        ),
        Positioned(
          bottom: 3,
          right: 0,
          child: Image.asset('assets/images/image 2.png'),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Bus',
                style: TextStyle(
                  color: kWhiteBGColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Manage your Bus',
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
