import 'package:flutter/material.dart';

class TopDoctors extends StatefulWidget {
  const TopDoctors({Key? key}) : super(key: key);

  @override
  State<TopDoctors> createState() => _TopDoctorsState();
}

class _TopDoctorsState extends State<TopDoctors> {
  bool selected = false;
  bool unselected = false;
  List<Tech> _chipsList = [
    Tech("All", Colors.blue, false, true),
    Tech("Genearl", Colors.grey, false, true),
    Tech("Dentist", Colors.grey, false, true),
    Tech("Nutritionist", Colors.grey, false, true),
    // Tech("Go lang", Colors.blue, false)
  ];

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
                      // Navigator.pop(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Home()),
                      // );
                    },
                    icon: Icon(Icons.more_sharp)),
              ],
            ),
            Wrap(
              spacing: 2,
              direction: Axis.horizontal,
              children: techChips(),
            ),

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
                            icon: Icon(
                              Icons.favorite,
                              // color: Colors.blue,
                            ),
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
                            icon: Icon(
                              Icons.favorite,
                              //color: Colors.blue,
                            ),
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
                            icon: Icon(
                              Icons.favorite,
                              // color: Colors.blue,
                            ),
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
                            icon: Icon(
                              Icons.favorite,
                              // color: Colors.blue,
                            ),
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
                            icon: Icon(
                              Icons.favorite,
                              //   color: Colors.blue
                            ),
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
          ]),
        ),
      ),
    );
  }

  List<Widget> techChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _chipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 10, right: 5),
        child: FilterChip(
          label: Text(_chipsList[i].label),
          labelStyle: TextStyle(color: Colors.white),
          backgroundColor: _chipsList[i].color,
          selected: _chipsList[i].isSelected,
          onSelected: (bool value) {
            selected = value;
            setState(() {
              _chipsList[i].isSelected = value;
            });
          },
          showCheckmark: false,
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}

class Tech {
  String label;
  Color color;
  bool isSelected;
  bool unSelected;
  Tech(this.label, this.color, this.isSelected, this.unSelected);
}
