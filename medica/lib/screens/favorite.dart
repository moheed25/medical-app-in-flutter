import 'package:flutter/material.dart';
import 'package:medica/screens/doctordetails.dart';
//import 'package:medica/bottomtabs/homepage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../bottomtabs/homepage.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                    'My Favorite Doctor',
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
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      icon: Icon(Icons.more_sharp)),
                ],
              ),
              //firts
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DoctorDetail()),
                  );
                },
                child: Container(
                  height: 130,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/doctor1.jpg",
                          height: 120,
                          width: 70,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Dr.Tarvols Patir',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  //fontweigth: fontweight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite, color: Colors.blue),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Cardiologists | Alka Hospital',
                                style: const TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  //fontweigth: fontweight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '4.3',
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  //fontweigth: fontweight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '(43,884 reviews)',
                                style: const TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  //fontweigth: fontweight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // second
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/doctor2.jpg",
                        height: 120,
                        width: 70,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Dr.Natinvali Fruoi',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite, color: Colors.blue),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Cardiologists | B&B Hospital',
                              style: const TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4.5',
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '(56,844 reviews)',
                              style: const TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //      three
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/pic5.jpg",
                        height: 120,
                        width: 70,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Dr.Bernad Blass',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite, color: Colors.blue),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Cardiologists |  Bir Hospital',
                              style: const TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4.9',
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '(55,824 reviews)',
                              style: const TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //four
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/pic4.jpg",
                        height: 120,
                        width: 70,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Dr.Jazda Geuaeo',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite, color: Colors.blue),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Cardiologists | Hidew Hospital',
                              style: const TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4.4',
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '(23,484 reviews)',
                              style: const TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // five
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/pic3.jpg",
                        height: 120,
                        width: 70,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Dr.Beckht Saheu',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite, color: Colors.blue),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Cardiologists | Vinus Hospital',
                              style: const TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4.7',
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '(33,334 reviews)',
                              style: const TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black,
                                //fontweigth: fontweight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )

              //
            ],
          ),
        ),
      ),
    );
  }
}
