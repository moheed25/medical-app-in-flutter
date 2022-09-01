import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tech
{
  String label;
  Color color;
  bool isSelected;
  Tech(this.label, this.color, this.isSelected);
}


 List<Tech> _chipsList = [
    Tech("All", Colors.blue, false),
    Tech("Genearl", Colors.blue, false),
    Tech("Dentist", Colors.blue, false),
    Tech("Nutritionist", Colors.blue, false),
   // Tech("Go lang", Colors.blue, false)
  ];


  

