import 'package:flutter/material.dart';
import 'package:to_do/layout/HomeLayout.dart';
import 'package:to_do/pages/homePage.dart';
import 'package:to_do/pages/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        HomePage.routeName: (context) => HomePage(),
      },
      home: SplashScreen(),
    );
  }
}
