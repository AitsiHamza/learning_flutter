import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exo 2"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.lightGreen,
          child: const Text(
            'Texte 1',
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 34,
            ),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
