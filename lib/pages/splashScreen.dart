import 'dart:async';
import 'package:flutter/material.dart';
import 'package:to_do/layout/HomeLayout.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splashScreen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    final mediaquary = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        "asset/images/splash.jpg",
        width: mediaquary.width,
        height: mediaquary.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
