import 'package:flutter/material.dart';
import 'package:machine_test/screens/bus_detail_screen.dart';

import '../constants/colors.dart';

class BusCard extends StatelessWidget {
  const BusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.pushNamed(context, BusDetailScreen.id);
      },
      child: Stack(
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
      ),
    );
  }
}
