import 'package:flutter/material.dart';

class LiscenceCard extends StatelessWidget {
  const LiscenceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 15, right: 15, top: 25, bottom: 25),
                height: 116,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF2B2B2B),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Rohit Sharma',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      Text(
                        'License no: PJ515196161655',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               Positioned(
            bottom: 26,
            right: 30,
            child: Image.asset('assets/images/driver.png', height: 114,),
          ),
            ],
          );
  }
}