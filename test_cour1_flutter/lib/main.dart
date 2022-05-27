import 'package:flutter/material.dart';
import 'package:test_cour1_flutter/pages/home.dart';
import 'package:test_cour1_flutter/pages/page1.dart';
import 'package:test_cour1_flutter/pages/page2.dart';
import 'package:test_cour1_flutter/pages/page3.dart';
import 'package:test_cour1_flutter/pages/page4.dart';
import 'package:test_cour1_flutter/pages/page5.dart';
import 'package:test_cour1_flutter/pages/page6.dart';
import 'package:test_cour1_flutter/pages/page7.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home":(context)=>HomePage(),
        "/page1":(context)=>Page1(),
        "/page2":(context)=>Page2(),
        "/page3":(context)=>Page3(),
        "/page4":(context)=>Page4(),
        "/page5":(context)=>Page5(),
        "/page6":(context)=>Page6(),
        "/page7":(context)=>Page7(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: "/home",
    );
  }
}