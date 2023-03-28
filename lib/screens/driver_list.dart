import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import '../custom widgets/custom_button.dart';
import '../utils/appbars.dart';
import '../utils/bus_manage_card.dart';
import 'add_driver_screen.dart';

class DriversList extends StatelessWidget {
  static const String id = 'driver_list';
  const DriversList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: busDetailAppbar(context, 'Driver List', 90),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '21 Drivers Found',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color(0xFF6B6B6B),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: BusManageCard(
                    image: 'assets/images/Ellipse.png',
                    title: 'Rohit Sharma',
                    subTitle: 'Licn no: PJ5151961616',
                    buttonText: 'Delete',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: CustomButton(
              label: 'Add Driver',
              buttonColor: kRedBGColor,
              onpressed: () {
                Navigator.pushNamed(context, AddDriverScreen.id);
              },
              textColor: kWhiteBGColor),
        ),
      ),
    );
  }
}
