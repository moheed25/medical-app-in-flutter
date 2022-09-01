import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // SizedBox(
          //   height: 10,
          // ),
          Lottie.network(
            'https://assets5.lottiefiles.com/packages/lf20_h55dw0gs.json',
            width: 450,
            height: 450,
            // fit: BoxFit.fill,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Health Checks &"
              "\nConslutations Easily Anywhere Anytime",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
