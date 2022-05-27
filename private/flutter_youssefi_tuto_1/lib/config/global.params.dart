import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String,dynamic>> menus=[
  {
    "title":"Home","icon":Icon(Icons.home,color:Colors.pink),"route":"/home"
  },
  {
    "title":"Counter","icon":Icon(Icons.control_point_duplicate_outlined,color:Colors.pink),"route":"/counter"
  },
   {
    "title":"Meteo","icon":Icon(Icons.camera,color:Colors.pink),"route":"/meteo"
  },
  {
    "title":"Gallery","icon":Icon(Icons.map,color:Colors.pink),"route":"/gallery"
  },
  ];
}