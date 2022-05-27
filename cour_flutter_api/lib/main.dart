import 'package:cour_flutter_api/pages/home.dart';
import 'package:cour_flutter_api/pages/page1.dart';
import 'package:cour_flutter_api/pages/page2.dart';
import 'package:cour_flutter_api/pages/page3.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home":(context)=>Home(),
        "/apiJsonPlaceHolder":(context)=>Page1(),
        "/apiGithub":(context)=>Page2(),
        "/apiRandomUser":(context)=>Page3(title: 'random user',),
        //"/apiSpring":(context)=>Page4(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: "/home",
    );
  }
}
