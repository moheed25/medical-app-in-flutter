import 'package:flutter/material.dart';
import 'package:medica/screens/selectPage.dart';
import 'package:table_calendar/table_calendar.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  //   CalendarController _controller;

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

//
  bool selected = false;
  bool unselected = true;
  List<Tech> _chipsList = [
    Tech("9:00 AM", Colors.white, false),
    Tech("9:30 AM", Colors.white, false),
    Tech("10:00 AM", Colors.white, false),
    Tech("10:30 PM", Colors.white, false),
    Tech("11:00 PM", Colors.white, false),
    Tech("11:30 PM", Colors.white, false),
    Tech(" 15:00 PM", Colors.white, false),
    Tech(" 15:30 PM", Colors.white, false),
    Tech(" 16:00 PM", Colors.white, false),
    Tech(" 16:30 PM", Colors.white, false),
    Tech(" 17:00 PM", Colors.white, false),
    Tech(" 17:30 PM", Colors.white, false),
  ];

  //
  ////@override
  // void initState() {
  //   super.initState();
  //   //  _controller = CalendarController();
  // }

  //
  List<String> chipList = ["hello", "hi", "How are you"];

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
              'Book Appointment',
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
                    MaterialPageRoute(builder: (context) => const SelectPage()),
                  );
                },
                icon: Icon(Icons.more_sharp)),
          ],
        ),
// CALENDER

        TableCalendar(
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) {
            // Use `selectedDayPredicate` to determine which day is currently selected.
            // If this returns true, then `day` will be marked as selected.

            // Using `isSameDay` is recommended to disregard
            // the time-part of compared DateTime objects.
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            if (!isSameDay(_selectedDay, selectedDay)) {
              // Call `setState()` when updating the selected day
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            }
          },
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              // Call `setState()` when updating calendar format
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            // No need to call `setState()` here
            _focusedDay = focusedDay;
          },
          // Enable week numbers (disabled by default).
          // weekNumbersVisible: true,
        ),
//

        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              'Select Hour',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
//
        Wrap(
          spacing: 3,
          direction: Axis.horizontal,
          children: techChips(),
        ),
//
//button
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SelectPage()),
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
      ]),
    )));
  }

//
  List<Widget> techChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _chipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 10, right: 5),
        child: FilterChip(
          selectedColor: Colors.blue,
          label: Text(_chipsList[i].label),
          labelStyle: TextStyle(color: Colors.black),
          backgroundColor: _chipsList[i].color,
          selected: _chipsList[i].isSelected,
          onSelected: (bool value) {
            setState(() {
              _chipsList[i].isSelected = value;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}

//

//
class Tech {
  String label;
  Color color;
  bool isSelected;
  Tech(this.label, this.color, this.isSelected);
}
