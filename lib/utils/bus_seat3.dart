import 'package:flutter/material.dart';

class BusSeatThree extends StatelessWidget {
  const BusSeatThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              seatImage(),
            ],
          ),
          Row(
            children: [
              seatImage(),
              seatImage(),
              seatImage(),
            ],
          ),
        ],
      ),
    );
  }
}

Widget seatImage() {
  return GestureDetector(
    onTap: () {},
    child: Stack(
      children: [
        SizedBox(
          height: 29,
          child: Image.asset(
            'assets/images/Union (1).png',
          ),
        ),
        Positioned(
          bottom: 12,
          right: 14,
          child: Image.asset('assets/images/Rectangle 661 (1).png'),
        ),
      ],
    ),
  );
}
