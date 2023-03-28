import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import '../utils/bus_card.dart';
import '../utils/appbars.dart';
import '../utils/bus_manage_card.dart';
import '../utils/driver_card.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_Screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    BusCard(),
                    DriverCard(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '21 Buses Found',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xFF6B6B6B),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: BusManageCard(
                      image: 'assets/images/image 3.png',
                      title: 'KSRTC',
                      subTitle: 'Swift Scania P-series',
                      buttonText: 'Manage',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
