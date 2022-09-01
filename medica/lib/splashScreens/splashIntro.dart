import 'dart:async';

//import 'package:firebase_login/page1.dart';
import 'package:flutter/material.dart';
import 'package:medica/splashScreens/splash1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class IntroSplashScreen extends StatefulWidget {
  const IntroSplashScreen({Key? key}) : super(key: key);

  @override
  State<IntroSplashScreen> createState() => _IntroSplashScreenState();
}

class _IntroSplashScreenState extends State<IntroSplashScreen> {
  void initState() {
    super.initState();
    // ignore: prefer_const_constructors
    Timer(
      // ignore: prefer_const_constructors
      Duration(
        seconds: 4,
      ),
      () => Navigator.of(context).push(
        MaterialPageRoute(
            // ignore: prefer_const_constructors
            builder: (BuildContext context) => SplashScreen1()),
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
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      height: 400,
                    ),
                    Image.asset("assets/healthcare.png",
                        height: 130, width: 130),
                    SizedBox(width: 20),
                    Text("Medica",
                        style: GoogleFonts.alfaSlabOne(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 45,
                          ),
                        )),
                  ],
                ),
              ),
              SpinKitFadingCircle(
                color: Colors.blue,
                size: 70.0,
                duration: Duration(seconds: 3),
              ),
            ],
          )),
    );
  }
}
