import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Lottie.network(
            'https://assets1.lottiefiles.com/private_files/lf30_tul1qoqd.json',
            width: 450,
            height: 450,
            // fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Let's Start Living&"
              "\nHealthy and Well with us Right Now",
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
