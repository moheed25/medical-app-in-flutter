import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
            'https://assets5.lottiefiles.com/packages/lf20_zpjfsp1e.json',
            width: 400,
            height: 400,
            // fit: BoxFit.fill,
          ),

          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Thousands of Doctors"
              "\nExperts to Help Your Health",
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
