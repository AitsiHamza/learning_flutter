import 'package:flutter/material.dart';
import 'package:flutter_github_tuto_2/pages/home/home.dart';
import 'package:flutter_github_tuto_2/pages/users/users.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      routes: {
        "/":(context)=>HomePage(),
        "/users":(context)=>UsersPage()
      },
      initialRoute: "/users",
    );
  }

}

