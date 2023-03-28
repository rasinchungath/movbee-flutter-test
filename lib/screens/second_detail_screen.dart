import 'package:flutter/material.dart';
import 'package:machine_test/utils/bus_seat3.dart';

import '../utils/appbars.dart';
import '../utils/liscence_card.dart';

class SecondDetailScreen extends StatelessWidget {
   static const String id = 'second_detail_screen';
  const SecondDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: busDetailAppbar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LiscenceCard(),
            Container(
                width: 283,
                height: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(width: 1, color: const Color(0xFFDCDCDC)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 29,
                            child: Image.asset(
                              'assets/images/Union.png',
                            ),
                          ),
                          Positioned(
                            bottom: 12,
                            right: 14,
                            child:
                                Image.asset('assets/images/Rectangle 661.png'),
                          ),
                        ],
                      ),
                    ),
                    BusSeatThree(),
                    BusSeatThree(),
                    BusSeatThree(),
                    BusSeatThree(),
                    BusSeatThree(),
                    BusSeatThree(),
                    BusSeatThree(),
                    BusSeatThree(),
                    BusSeatThree(),
                   
                  ],
                ),),
          ],
        ),
      ),
    );
  }
}