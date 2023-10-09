import 'package:flutter/material.dart';
import 'package:to_do/pages/homePage.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = "home layout";

  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    List<Widget> pages = [
      HomePage(),
      // SettingView(),
    ];
    return Scaffold(
      body: Text("home layout"),
    );
  }
}
