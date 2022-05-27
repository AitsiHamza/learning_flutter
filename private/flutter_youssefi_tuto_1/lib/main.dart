import 'package:flutter/material.dart';
import 'package:flutter_youssefi_tuto_1/ui/pages/counter.page.dart';
import 'package:flutter_youssefi_tuto_1/ui/pages/gallery.page.dart';
import 'package:flutter_youssefi_tuto_1/ui/pages/home.page.dart';
import 'package:flutter_youssefi_tuto_1/ui/pages/meteo.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home":(context)=>HomePage(),
        "/meteo":(context)=>MeteoPage(),
        "/gallery":(context)=>GalleryPage(),
        "/counter":(context)=>CounterPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/home",
    );
  }
}

