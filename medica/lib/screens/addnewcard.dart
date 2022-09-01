import 'package:flutter/material.dart';
import 'package:medica/screens/RewviewSummaray.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  @override
  Widget build(BuildContext context) {
     return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(children: [
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
            'Add New Card',
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 60,
          ),
          IconButton(
              onPressed: () {
                
              },
              icon: Icon(Icons.more_sharp)),
        ],
      ),

 Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReviewsSummary()),
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
                  'Next',
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


    ]))));
  }
}