import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medica/loginscreens/createaccount.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Lottie.network(
              'https://assets2.lottiefiles.com/private_files/lf30_iraugwwv.json',
              width: 200,
              height: 200,
              //fit: BoxFit.fill,
            ),
          ),
          //text
          Text("Let's you in ...",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 15,
          ),
          //facebook
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  //            color: Colors.black,

                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),

                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/facebook.png",
                      height: 50,
                      width: 50,
                      // color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Continue With Facebook',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 1,
          ),
          //google
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  // color: Colors.black,
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/google.png",
                      height: 50,
                      width: 50,
                      //color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Continue With Google',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 1,
          ),
          //apple
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  //color: Colors.black,

                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),

                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/apple.png",
                      height: 50,
                      width: 50,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Continue With Apple',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 25,
          ),
          //text
          Text(
            'OR',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //sign in button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateAccount()),
                );
              },
              child: Container(
                height: 60,
                width: 220,
                decoration: BoxDecoration(
                  color: Color(0xff00659c),
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Sign in with Password',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // text to sign up
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                ),
                // text
                Text(
                  "Already have an Account ?",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
