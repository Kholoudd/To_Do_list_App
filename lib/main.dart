import 'package:flutter/material.dart';
import 'package:to_do/core/theme/applicationTheme.dart';
import 'package:to_do/layout/HomeLayout.dart';
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
      theme: ApplicationTheme.lightTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
      },
      home: SplashScreen(),
    );
  }
}
