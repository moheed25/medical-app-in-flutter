import 'package:flutter/material.dart';
import 'package:medica/splashScreens/splashIntro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home:IntroSplashScreen(),
    );
  }
}