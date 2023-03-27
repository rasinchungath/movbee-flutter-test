import 'package:flutter/material.dart';

class MovbeeLogo extends StatelessWidget {
  const MovbeeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: 60, child: Image.asset('assets/images/moovbe.png')),
        Positioned(
          right: 52,
          top: -5,
          child: Image.asset(
            'assets/images/Polygon 1.png',
            height: 24.28,
            width: 26.39,
          ),
        ),
      ],
    );
  }
}
