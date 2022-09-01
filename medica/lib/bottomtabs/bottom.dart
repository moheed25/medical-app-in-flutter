import 'package:flutter/material.dart';
import 'package:medica/bottomtabs/appointment.dart';
import 'package:medica/bottomtabs/article.dart';
import 'package:medica/bottomtabs/history.dart';
import 'package:medica/bottomtabs/homepage.dart';
import 'package:medica/bottomtabs/profile.dart';

import 'package:medica/loginscreens/homescreen.dart';
import 'package:medica/loginscreens/pofile.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 0;

  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
        bottomNavigationBar: BottomAppBar(
          // notchMargin: 50,
          color: Colors.blue,
          child: Container(
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MaterialButton(
                      minWidth: 50,
                      onPressed: () {
                        setState(() {
                          currentScreen = Home();
                          currentTab = 0;
                        });
                      },
                      child: Icon(Icons.home,
                          color:
                              currentTab == 0 ? Colors.white : Colors.black)),
                  MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = Appointment();
                          currentTab = 1;
                        });
                      },
                      child: Icon(Icons.calendar_month,
                          color:
                              currentTab == 1 ? Colors.white : Colors.black)),
                  MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = History();
                          currentTab = 2;
                        });
                      },
                      child: Icon(Icons.history,
                          color:
                              currentTab == 2 ? Colors.white : Colors.black)),
                  MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = Article();
                          currentTab = 3;
                        });
                      },
                      child: Icon(Icons.article,
                          color:
                              currentTab == 3 ? Colors.white : Colors.black)),
                  MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = Profile1();
                          currentTab = 4;
                        });
                      },
                      child: Icon(Icons.person,
                          color:
                              currentTab == 4 ? Colors.white : Colors.black)),
                ]),
          ),
        ),
      ),
    );
  }
}
