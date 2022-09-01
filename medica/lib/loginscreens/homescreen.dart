// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// import 'bottom screen/screen1.dart';
// import 'bottom screen/screens2.dart';
// import 'bottom screen/screens3.dart';
// import 'bottom screen/screens4.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   Color _favIconColor = Colors.black;
//   final _textcontroller = TextEditingController();
//   int currentTab = 0;

//   Widget currentScreen = ;
//   int _page = 0;
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       // body: Column(
//       //   children: [
//       //     ListTile(
//       //       leading: CircleAvatar(
//       //         backgroundColor: Colors.grey,
//       //       ),
//       //       title: Text(
//       //         "Good Morning",
//       //         style: TextStyle(
//       //           color: Colors.black,
//       //           //  fontSize: 10,
//       //           fontWeight: FontWeight.bold,
//       //         ),
//       //       ),
//       //       subtitle: Text(
//       //         "Andrew Ansoly",
//       //         style: TextStyle(
//       //           color: Colors.black,
//       //           //  fontSize: 10,
//       //           // fontWeight: FontWeight.bold,
//       //         ),
//       //       ),
//       //       trailing: Wrap(
//       //         spacing: 12, // space between two icons
//       //         children: <Widget>[
//       //           IconButton(
//       //             onPressed: () {},
//       //             icon: Icon(Icons.notification_add),
//       //             hoverColor: Colors.purple,
//       //             tooltip: 'See Notification',
//       //             color: Colors.black,
//       //           ), // icon-1
//       //           IconButton(
//       //             onPressed: () {},
//       //             icon: Icon(Icons.favorite_border),
//       //             hoverColor: Colors.purple,
//       //             tooltip: 'See favorite List',
//       //             color: Colors.black,
//       //           ),
//       //         ],
//       //       ),
//       //     ),
//       //     //search
//       //     Padding(
//       //       padding: const EdgeInsets.all(8.0),
//       //       child: TextField(
//       //         controller: _textcontroller,
//       //         autofocus: false,
//       //         showCursor: false,
//       //         decoration: InputDecoration(
//       //           focusedBorder: OutlineInputBorder(
//       //             borderSide: BorderSide(
//       //               color: Colors.grey,
//       //             ),
//       //           ),
//       //           hintText: 'Search',
//       //           prefixIcon: IconButton(
//       //             onPressed: () {},
//       //             icon: Icon(Icons.search),
//       //             hoverColor: Colors.purple,
//       //             tooltip: 'Search Bar',
//       //             color: Colors.grey,
//       //           ),
//       //           suffixIcon: IconButton(
//       //             onPressed: () {
//       //               _textcontroller.clear();
//       //             },
//       //             icon: Icon(Icons.clear),
//       //             hoverColor: Colors.purple,
//       //             tooltip: 'Search Bar',
//       //             color: Colors.grey,
//       //           ),
//       //         ),
//       //       ),
//       //     ),
//       // PageStorage(bucket: PageStorageBucket(), child: currentScreen),
//       //],
//       // ),

//       //PageStorage(bucket: PageStorageBucket(), child: currentScreen),
//       bottomNavigationBar: BottomAppBar(
//         // notchMargin: 50,
//         color: Colors.red[900],
//         child: Container(
//           height: 60,
//           child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 MaterialButton(
//                     minWidth: 50,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = Screen1();
//                         currentTab = 0;
//                       });
//                     },
//                     child: Icon(Icons.home,
//                         color: currentTab == 0 ? Colors.white : Colors.black)),
//                 MaterialButton(
//                     minWidth: 60,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = Screen2();
//                         currentTab = 1;
//                       });
//                     },
//                     child: Icon(Icons.favorite,
//                         color: currentTab == 1 ? Colors.white : Colors.black)),
//                 MaterialButton(
//                     minWidth: 60,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = Screen3();
//                         currentTab = 2;
//                       });
//                     },
//                     child: Icon(Icons.search,
//                         color: currentTab == 2 ? Colors.white : Colors.black)),
//                 MaterialButton(
//                     minWidth: 60,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = Screen4();
//                         currentTab = 3;
//                       });
//                     },
//                     child: Icon(Icons.person,
//                         color: currentTab == 3 ? Colors.white : Colors.black)),
//               ]),
//         ),
//       ),
//     ));
//     ;
//   }
// }
