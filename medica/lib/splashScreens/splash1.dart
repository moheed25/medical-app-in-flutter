import 'dart:async';

//import 'package:firebase_login/page1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/splashScreens/splash2.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  void initState() {
    super.initState();
    // ignore: prefer_const_constructors
    Timer(
      // ignore: prefer_const_constructors
      Duration(
        seconds: 3,
      ),
      () => Navigator.of(context).push(
        MaterialPageRoute(
            // ignore: prefer_const_constructors
            builder: (BuildContext context) => SplashScreen2()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              //first row
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Image.asset(
                  "assets/medical-team.png",
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  "assets/medical-equipment.png",
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  "assets/x-ray (1).png",
                  height: 70,
                  width: 70,
                ),
              ]),
              // second row
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Image.asset(
                  "assets/fever.png",
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  "assets/vomit.png",
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  "assets/injury.png",
                  height: 70,
                  width: 70,
                ),
              ]),
              //third row
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Image.asset(
                  "assets/doctor.png",
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  "assets/elbow.png",
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  "assets/cough.png",
                  height: 70,
                  width: 70,
                ),
              ]),

              SizedBox(
                height: 20,
              ),

              //welcome text
              Container(
                child: Text(
                  "Welcome to Medica",
                  style: GoogleFonts.anton(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  )),
                ),
              ),
//health care image
              Image.asset(
                "assets/healthcare.png",
                height: 100,
                width: 100,
              ),
              // SizedBox(
              //   height: 30,
              // ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "The Best Online Doctor Appointment &"
                    "\n Consultation app of Century for your"
                    "\n Health and Medical need!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),

// spaces:
              // SizedBox(
              //   height: 60,
              // ),
              // first row
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Image.asset(
                  "assets/brain.png",
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  "assets/wound.png",
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  "assets/x-ray (2).png",
                  height: 70,
                  width: 70,
                ),
              ]),

              // second row
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Image.asset(
                  "assets/heart-problem.png",
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  "assets/insomnia.png",
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  "assets/dizziness.png",
                  height: 70,
                  width: 70,
                ),
              ]),

// third row
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Image.asset(
                  "assets/sick.png",
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  "assets/pain-in-joints.png",
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  "assets/head.png",
                  height: 70,
                  width: 70,
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
