import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String,dynamic>> menus=[
    {
      "title":"Home","icon":Icon(Icons.home,color:Colors.pink),"route":"/home"
    },
    {
      "title":"exo 1","icon":Icon(Icons.control_point_duplicate_outlined,color:Colors.pink),"route":"/page1"
    },
    {
      "title":"exo 2","icon":Icon(Icons.control_point_duplicate_outlined,color:Colors.pink),"route":"/page2"
    },
    {
      "title":"exo 3","icon":Icon(Icons.control_point_duplicate_outlined,color:Colors.pink),"route":"/page3"
    },
    {
      "title":"exo 4","icon":Icon(Icons.control_point_duplicate_outlined,color:Colors.pink),"route":"/page4"
    },
    {
      "title":"exo 5","icon":Icon(Icons.control_point_duplicate_outlined,color:Colors.pink),"route":"/page5"
    },
    {
      "title":"exo 6","icon":Icon(Icons.control_point_duplicate_outlined,color:Colors.pink),"route":"/page6"
    },
    {
      "title":"exo 7","icon":Icon(Icons.control_point_duplicate_outlined,color:Colors.pink),"route":"/page7"
    },
  ];
  static String rootUrl="http://10.10.1.96:8087";
}