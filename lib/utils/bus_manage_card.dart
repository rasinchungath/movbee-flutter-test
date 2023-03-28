import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BusManageCard extends StatelessWidget {
  const BusManageCard(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.buttonText});
  final String image;
  final String buttonText;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.3, color: const Color(0xFFC1C1C1)),
        borderRadius: BorderRadius.circular(10),
        color: kWhiteBGColor,
        boxShadow: const [
          BoxShadow(
            offset: Offset(1, 7),
            blurRadius: 5,
            color: Color(0xFFD4D4D4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 79,
            height: 74,
            decoration: const BoxDecoration(
                color: Color(0xFFF3F3F3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: Image.asset(
              image,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff474747),
                ),
              ),
              Text(
                subTitle,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff474747),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kRedBGColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
