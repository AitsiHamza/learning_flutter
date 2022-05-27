import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String,dynamic>> menus=[
  {
    "title":"Home","icon":Icon(Icons.home,color:Colors.pink),"route":"/home"
  },
  {
    "title":"api json placeholder","icon":Icon(Icons.adb,color:Colors.pink),"route":"/apiJsonPlaceHolder"
  },
  {
    "title":"api github","icon":Icon(Icons.adb,color:Colors.pink),"route":"/apiGithub"
  },
  {
    "title":"api random api","icon":Icon(Icons.adb,color:Colors.pink),"route":"/apiRandomUser"
  },
  {
    "title":"api spring boot","icon":Icon(Icons.adb,color:Colors.pink),"route":"/apiSpring"
  },
  ];
  static String rootUrl="http://192.168.0.113:8082/v1";
}