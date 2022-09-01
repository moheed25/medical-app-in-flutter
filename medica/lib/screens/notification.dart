import 'package:flutter/material.dart';

class Notification1 extends StatefulWidget {
  const Notification1({Key? key}) : super(key: key);

  @override
  State<Notification1> createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
            Text(
              'Notification',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 100,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_sharp)),
          ],
        ),
        ListTile(
          leading: Image.asset(
            'assets/x-button.png',
            height: 40,
            width: 40,
          ),
          title: Text(
            'Appointment Cancelled !',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
          subtitle: Text(
            'Today | 15:36 PM',
            style: const TextStyle(
              fontSize: 10,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
          trailing: Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'New',
                style: const TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black,
                  //fontweigth: fontweight.bold,
                ),
              ),
            ),
          ),
        ),
        // SizedBox(
        //   height: 5,
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "you have sucessfully canceled your appointment with Dr"
            "\nAlan Watson on December 24, 2024, 13:00 p.m 80% of the"
            "/nfunds will be returned to your account",
            style: const TextStyle(
              fontSize: 10,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/schedule.png',
            height: 40,
            width: 40,
          ),
          title: Text(
            'Schedule Changed',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
          subtitle: Text(
            'Today | 15:36 PM',
            style: const TextStyle(
              fontSize: 10,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
          trailing: Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'New',
                style: const TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black,
                  //fontweigth: fontweight.bold,
                ),
              ),
            ),
          ),
        ),
        // SizedBox(
        //   height: 5,
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "you have sucessfully canceled your appointment with Dr"
            "\nAlan Watson on December 24, 2024, 13:00 p.m 80% of the"
            "/nfunds will be returned to your account",
            style: const TextStyle(
              fontSize: 10,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/schedule.png',
            height: 40,
            width: 40,
          ),
          title: Text(
            'Appointment Success!',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
          subtitle: Text(
            'Today | 15:36 PM',
            style: const TextStyle(
              fontSize: 10,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
          // trailing: Container(
          //   height: 40,
          //   width: 50,
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: Center(
          //     child: Text(
          //       'New',
          //       style: const TextStyle(
          //         fontSize: 15,
          //         // fontWeight: FontWeight.bold,
          //         color: Colors.black,
          //         //fontweigth: fontweight.bold,
          //       ),
          //     ),
          //   ),
          // ),
        ),
        // SizedBox(
        //   height: 5,
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "you have sucessfully canceled your appointment with Dr"
            "\nAlan Watson on December 24, 2024, 13:00 p.m 80% of the"
            "/nfunds will be returned to your account",
            style: const TextStyle(
              fontSize: 10,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/cloud-computing.png',
            height: 40,
            width: 40,
          ),
          title: Text(
            'New Services Available!',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
          subtitle: Text(
            'Today | 15:36 PM',
            style: const TextStyle(
              fontSize: 10,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
          // trailing: Container(
          //   height: 40,
          //   width: 50,
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: Center(
          //     child: Text(
          //       'New',
          //       style: const TextStyle(
          //         fontSize: 15,
          //         // fontWeight: FontWeight.bold,
          //         color: Colors.black,
          //         //fontweigth: fontweight.bold,
          //       ),
          //     ),
          //   ),
          // ),
        ),
        // SizedBox(
        //   height: 5,
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "you have sucessfully canceled your appointment with Dr"
            "\nAlan Watson on December 24, 2024, 13:00 p.m 80% of the"
            "/nfunds will be returned to your account",
            style: const TextStyle(
              fontSize: 10,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/credit.png',
            height: 40,
            width: 40,
          ),
          title: Text(
            'Credit Card Connected !',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
          subtitle: Text(
            'Today | 15:36 PM',
            style: const TextStyle(
              fontSize: 10,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
          // trailing: Container(
          //   height: 40,
          //   width: 50,
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: Center(
          //     child: Text(
          //       'New',
          //       style: const TextStyle(
          //         fontSize: 15,
          //         // fontWeight: FontWeight.bold,
          //         color: Colors.black,
          //         //fontweigth: fontweight.bold,
          //       ),
          //     ),
          //   ),
          // ),
        ),
        // SizedBox(
        //   height: 5,
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "you have sucessfully canceled your appointment with Dr"
            "\nAlan Watson on December 24, 2024, 13:00 p.m 80% of the"
            "/nfunds will be returned to your account",
            style: const TextStyle(
              fontSize: 10,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
              //fontweigth: fontweight.bold,
            ),
          ),
        ),
      ],
    )));
  }
}
