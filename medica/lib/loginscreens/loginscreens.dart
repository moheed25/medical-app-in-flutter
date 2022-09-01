import 'package:flutter/material.dart';
import 'package:medica/loginscreens/loginintro.dart';
import 'package:medica/loginscreens/loginscreens.dart';
import 'package:medica/loginscreens/pofile.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            //arrow back
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    icon: Icon(Icons.arrow_back)),
              ],
            ),
            Image.asset(
              "assets/healthcare.png",
              width: 100,
              height: 100,
            ),
            SizedBox(height: 30),
            //text create account
            Text(
              'Login to Your Account',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15),
            //text field email
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                autofocus: false,
                showCursor: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  //labelText: 'Password',
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            //SizedBox(height: 5),
            //textfiled pasword
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                autofocus: false,
                showCursor: false,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  //labelText: 'Password',
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //sign up button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Profile()),
                  );
                },
                child: Container(
                  height: 60,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Color(0xff00659c),
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
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
            SizedBox(
              height: 25,
            ),
            //text
            Text(
              'or Continue with',
              style: const TextStyle(
                fontSize: 20,
                // fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // buttons in a row,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/apple.png",
                  height: 40,
                  width: 40,
                ),
                Image.asset(
                  "assets/facebook.png",
                  height: 40,
                  width: 40,
                ),
                Image.asset(
                  "assets/google.png",
                  height: 40,
                  width: 40,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
//text
            Text(
              "Don't have an Account ?",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 20),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              child: Text(
                "Sign in",
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
    ));
  }
}

