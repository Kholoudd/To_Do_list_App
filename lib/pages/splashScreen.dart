import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do/layout/HomeLayout.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splashScreen";

  const SplashScreen({super.key});

  Widget build(BuildContext context) {
    final mediaquary = MediaQuery.of(context).size;
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    return Scaffold(
      body:
          // Image.asset("assets/images/splashscreen.png" ,
          //   width:mediaquary.width,
          //   height:mediaquary.width ,
          //   fit:BoxFit.cover,)
          Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SplashScreen",
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}
