import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/pages/home/homePage.dart';
import 'package:to_do/pages/settingPage.dart';

class HomeLayout extends StatefulWidget {
  @override
  static const String routeName = "home_layout";

  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> pages = [
    HomePage(),
    SettingsPage(),
  ];

  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      body: pages[selectedIndex],
      floatingActionButton: CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => Container());
          },
          backgroundColor: theme.floatingActionButtonTheme.backgroundColor,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("asset/images/icon_list.png"),
              ),
              label: "menu",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("asset/images/icon_settings.png")),
              label: "settings",
            ),
          ],
        ),
      ),
    );
  }
}
