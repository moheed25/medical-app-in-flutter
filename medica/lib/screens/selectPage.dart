import 'package:flutter/material.dart';
import 'package:medica/screens/Patientsdetails.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  var selectedRatio = 0;

  @override
  void iniState() {
    super.initState();
    selectedRatio = 0;
  }

  setSelectedRatio(var val) {
    setState(() {
      selectedRatio = val;
    });
  }

  String? selectedValue;
  List<String> items = [
    '30 Minutes',
    '60 Minutes',
    '120 Minutes',
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
                'Select Packages',
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 60,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_sharp)),
            ],
          ),
//
          Row(
            children: [
              SizedBox(width: 15),
              Text(
                'Select Duration',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
//
          SizedBox(
            height: 15,
          ),
//
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.watch_later,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          hint: Text(
                            'Select Duration',
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                          buttonHeight: 40,
                          buttonWidth: 230,
                          itemHeight: 40,
                          // itemWidth: 140,
                        ),
                      ),
                    ],
                  )),
            ],
          ),

          Row(
            children: [
              SizedBox(width: 15),
              Text(
                'Select Package',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
//
          Row(
            children: [
              RadioListTile(
                  value: 1,
                  groupValue: selectedRatio,
                  onChanged: ((val) {
                    setState(() {
                      print(" Radio $val");
                      setSelectedRatio(val);
                    });
                  })),
              SizedBox(
                height: 10,
              ),
             
            ],
          ),
          Row(
            children: [
              Radio(
                  value: 2,
                  groupValue: selectedRatio,
                  onChanged: ((val) {
                    setState(() {
                      print(" Radio $val");
                      setSelectedRatio(val);
                    });
                  })),
             
            ],
          ),
          // Row(
          //   children: [
          //     Radio(
          //         value: 3,
          //         groupValue: selectedRatio,
          //         onChanged: ((value) {
          //           setState(() {
          //             _value = _value;
          //           });
          //         })),
          //     SizedBox(
          //       height: 10,
          //     ),
          //     Text("hello3"),
          //   ],
          // ),
//
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetails()),
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
//

//
        ]),
      ),
    ));
  }
}
