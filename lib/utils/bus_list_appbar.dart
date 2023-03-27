import 'package:flutter/material.dart';

import '../constants/colors.dart';

AppBar appBar(){
  return  AppBar(
        toolbarHeight: 119, 
        flexibleSpace: Container(
          color: kPrimaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 55,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 35,
                    width: 126,
                    child: Image.asset(
                      'assets/images/moovbe.png',
                    ),
                  ),
                  Positioned(
                    right: 6,
                    top: -10,
                    child: Image.asset(
                      'assets/images/Polygon 1.png',
                      height: 24.28,
                      width: 26.39,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

