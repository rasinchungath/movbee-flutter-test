import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/login_controller.dart';
import '../utils/bus_card.dart';
import '../utils/appbars.dart';
import '../utils/bus_manage_card.dart';
import '../utils/driver_card.dart';
import 'bus_detail_screen.dart';
import 'driver_list.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_Screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginUser = Provider.of<Controller>(context, listen: true);
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
                  children:  [
                    GestureDetector(
                      onTap: (){
                         Navigator.pushNamed(context, BusDetailScreen.id);
                      },
                      child: const BusCard(),),
                    GestureDetector(
                      onTap: ()async {
                      await loginUser.getDriverList(
                     context: context
                    );
                        
                        Navigator.pushNamed(context, DriversList.id);
                        
                      },
                      child: DriverCard(),),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                 const Text(
                   //loginUser.data!['bus_list'].length == null ? '0 Buses Found':'${loginUser.data!['bus_list'].length} Buses Found',

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
                  //itemCount: loginUser.data!['bus_list'].length,
                  itemBuilder: (context, index) =>Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: BusManageCard(
                      onpressed: (){},
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
