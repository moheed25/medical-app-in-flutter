import 'package:flutter/material.dart';
import 'package:medica/introScreens/first.dart';
import 'package:medica/introScreens/fourth.dart';
import 'package:medica/introScreens/second.dart';
import 'package:medica/introScreens/third.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Page1(),
              Page2(),
              Page3(),
              Page4(),
            ],
          ),
          SizedBox(
            width: 80,
          ),
          Container(
              alignment: Alignment(0.55, 0.90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // GestureDetector(
                  //     onTap: () {
                  //       _controller.nextPage(
                  //         duration: Duration(milliseconds: 500),
                  //         curve: Curves.ease,
                  //       );
                  //     },
                  //  child:
                  //   Text('skip'),
                  //   ),
                  SmoothPageIndicator(
                      controller: _controller, // PageController
                      count: 4,
                      effect: WormEffect(
                        dotColor: Colors.black,
                        activeDotColor: Colors.grey,
                        dotHeight: 25,
                        dotWidth: 25,
                        spacing: 15,
                        radius: 5,
                      ), // your preferred effect
                      onDotClicked: (index) {}),
                  // GestureDetector(
                  //     onTap: () {
                  //       _controller.nextPage(
                  //         duration: Duration(milliseconds: 500),
                  //         curve: Curves.ease,
                  //       );
                  //     },
                  //     child: Text('next')),
                ],
              )),
        ],
      ),
    );
  }
}
