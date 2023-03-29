import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import 'package:provider/provider.dart';
import '../custom widgets/custom_button.dart';
import '../provider/login_controller.dart';
import '../utils/appbars.dart';
import '../utils/bus_manage_card.dart';
import 'add_driver_screen.dart';

class DriversList extends StatelessWidget {
  static const String id = 'driver_list';
  const DriversList({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<Controller>(context, listen: true);
    return Scaffold(
      appBar: busDetailAppbar(
        context,
        'Driver List',
        82,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pro.driverdata!['driver_list'].length > 1
                    ? '${pro.driverdata!['driver_list'].length} Drivers Found'
                    : '${pro.driverdata!['driver_list'].length} Driver Found',
                style: const TextStyle(
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
                  itemCount: pro.driverdata!['driver_list'].length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: BusManageCard(
                        onpressed: ()async{
                          //print( pro.driverdata!['driver_list'][index]['id']);
                          await pro.deleteDriver(driverId: pro.driverdata!['driver_list'][index]['id'].toString(), context: context);
                          
                        },
                        image: 'assets/images/Ellipse.png',
                        title: pro.driverdata!['driver_list'][index]['name'],
                        subTitle: pro.driverdata!['driver_list'][index]
                            ['license_no'],
                        buttonText: 'Delete',
                      ),
                    );
                  }),
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
