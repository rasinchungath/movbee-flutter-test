import 'package:flutter/material.dart';
import 'package:machine_test/utils/appbars.dart';
import 'package:machine_test/utils/liscence_card.dart';

import '../utils/bus_seat2.dart';

class BusDetailScreen extends StatefulWidget {
  static const String id = 'busDetail_screen';
  const BusDetailScreen({super.key});

  @override
  State<BusDetailScreen> createState() => _BusDetailScreenState();
}

class _BusDetailScreenState extends State<BusDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: busDetailAppbar(context, 'KSRTC Swift Scania P-series', 10),
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
                    const BusSeatTwo(),
                    const BusSeatTwo(),
                    const BusSeatTwo(),
                    const BusSeatTwo(),
                    const BusSeatTwo(),
                    const BusSeatTwo(),
                    const BusSeatTwo(),
                    const BusSeatTwo(),
                    const BusSeatTwo(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
