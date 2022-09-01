import 'dart:async';

//import 'package:firebase_login/page1.dart';
import 'package:flutter/material.dart';
import 'package:medica/splashScreens/splash3.dart';
import 'package:lottie/lottie.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  void initState() {
    super.initState();
    // ignore: prefer_const_constructors
    Timer(
      // ignore: prefer_const_constructors
      Duration(
        seconds: 6,
      ),
      () => Navigator.of(context).push(
        MaterialPageRoute(
            // ignore: prefer_const_constructors
            builder: (BuildContext context) => SplashScreen3()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(
                height: 110,
              ),
              Lottie.network(
                'https://assets3.lottiefiles.com/packages/lf20_wdXBRc.json',
                width: 500,
                height: 500,
                // fit: BoxFit.fill,
              ),
            ],
          )),
    );
  }
}
