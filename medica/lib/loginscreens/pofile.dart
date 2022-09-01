import 'package:flutter/material.dart';
import 'package:medica/bottomtabs/homepage.dart';
import 'package:medica/bottomtabs/bottom.dart';
import 'package:medica/loginscreens/createaccount.dart';
import 'package:medica/loginscreens/homescreen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
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
                          builder: (context) => const CreateAccount()),
                    );
                  },
                  icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: 20,
              ),
              Text(
                "Fill Your Profile",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(height: 170),
          //fullname
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              autofocus: false,
              showCursor: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                //labelText: 'Password',
                hintText: 'Full Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
          ),
          //nickname
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              autofocus: false,
              showCursor: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                //labelText: 'Password',
                hintText: 'Nick Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
          ),
          //Date of birth
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              autofocus: false,
              showCursor: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                //labelText: 'Password',
                hintText: 'Date of Birth',
                prefixIcon: Icon(Icons.calendar_today),
              ),
            ),
          ),
          //email
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
          //Gender
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              autofocus: false,
              showCursor: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                //labelText: 'Password',
                hintText: 'Gender',
                prefixIcon: Icon(Icons.favorite_border),
              ),
            ),
          ),

          // buttons
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavigation()),
                );
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xff00659c),
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Continue',
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
        ],
      )),
    );
  }
}
