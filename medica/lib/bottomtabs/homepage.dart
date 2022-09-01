import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medica/loginscreens/pofile.dart';
import 'package:medica/screens/favorite.dart';
import 'package:medica/screens/notification.dart';
import 'package:medica/screens/topdoctors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _textcontroller = TextEditingController();
  bool selected = false;
  bool unselected = false;
  List<Tech> _chipsList = [
    Tech("All", Colors.blue, false, true),
    Tech("Genearl", Colors.blue, false, true),
    Tech("Dentist", Colors.blue, false, true),
    Tech("Nutritionist", Colors.blue, false, true),
    // Tech("Go lang", Colors.blue, false)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                title: Text(
                  "Good Morning",
                  style: TextStyle(
                    color: Colors.black,
                    //  fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Andrew Ansoly",
                  style: TextStyle(
                    color: Colors.black,
                    //  fontSize: 10,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notification1()),
                        );
                      },
                      icon: Icon(Icons.notification_add),
                      hoverColor: Colors.purple,
                      tooltip: 'See Notification',
                      color: Colors.black,
                    ), // icon-1
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Favorite()),
                        );
                      },
                      icon: Icon(Icons.favorite_border),
                      hoverColor: Colors.purple,
                      tooltip: 'See favorite List',
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              //search
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _textcontroller,
                  autofocus: false,
                  showCursor: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'Search',
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      hoverColor: Colors.purple,
                      tooltip: 'Search Bar',
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textcontroller.clear();
                      },
                      icon: Icon(Icons.clear),
                      hoverColor: Colors.purple,
                      tooltip: 'Search Bar',
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Lottie.network(
                    'https://assets6.lottiefiles.com/packages/lf20_R37sMW1Nbl.json',
                    width: 150,
                    height: 150,
                    // fit: BoxFit.fill,
                  ),
                  Lottie.network(
                    'https://assets1.lottiefiles.com/packages/lf20_z8jr0ftd.json',
                    width: 150,
                    height: 150,
                    // fit: BoxFit.fill,
                  ),
                  Lottie.network(
                    'https://assets2.lottiefiles.com/packages/lf20_ooqij0vt.json',
                    width: 150,
                    height: 150,
                    // fit: BoxFit.fill,
                  ),
                  Lottie.network(
                    'https://assets7.lottiefiles.com/packages/lf20_YEZz8Y.json',
                    width: 150,
                    height: 150,
                    // fit: BoxFit.fill,
                  ),
                  Lottie.network(
                    'https://assets4.lottiefiles.com/packages/lf20_vPnn3K.json',
                    width: 150,
                    height: 150,
                    // fit: BoxFit.fill,
                  ),
                  Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_gnh15vxc.json',
                    width: 150,
                    height: 150,
                    // fit: BoxFit.fill,
                  ),
                  Lottie.network(
                    'https://assets8.lottiefiles.com/packages/lf20_b44anj9k.json',
                    width: 150,
                    height: 150,
                    // fit: BoxFit.fill,
                  ),
                  Lottie.network(
                    'https://assets2.lottiefiles.com/private_files/lf30_rxzmonwh.json',
                    width: 150,
                    height: 150,
                    // fit: BoxFit.fill,
                  ),
                  Lottie.network(
                    'https://assets5.lottiefiles.com/packages/lf20_3xgahwks.json',
                    width: 150,
                    height: 150,
                    // fit: BoxFit.fill,
                  ),
                  Lottie.network(
                    'https://assets5.lottiefiles.com/packages/lf20_bkmppjns.json',
                    width: 150,
                    height: 150,
                    // fit: BoxFit.fill,
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Doctor Speciality',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //   SizedBox(width: 100),
                  Text(
                    'Sell All',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/medical-team.png",
                      )),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/clean.png")),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/eye.png")),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/balanced-diet.png")),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "General",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Dentist",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Ophthal",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Nutrition",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/brain.png")),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/people.png")),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/x-ray (2).png")),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/more.png")),
                ],
              ),

              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Neurology",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Pediatric",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Radiology",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "More",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Top Doctor',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //   SizedBox(width: 100),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TopDoctors()),
                      );
                    },
                    child: Text(
                      'Sell All',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Wrap(
                spacing: 2,
                direction: Axis.horizontal,
                children: techChips(),
              )
            ],
          ),
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
