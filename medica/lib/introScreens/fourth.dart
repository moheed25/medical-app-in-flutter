import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medica/loginscreens/loginintro.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Lottie.network(
          'https://assets8.lottiefiles.com/packages/lf20_cbajnb2e.json',
          width: 550,
          height: 550,
          // fit: BoxFit.fill,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
          child: Container(
            height: 60,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                'Start',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
