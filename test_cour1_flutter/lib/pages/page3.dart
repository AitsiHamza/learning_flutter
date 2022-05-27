import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exo 3"),
      ),
      body: Center(
          child: Container(
              height: 600,
              width: 400,
              color: Colors.lightGreen,
              child: Column(children: const <Widget>[
                Text(
                  'Texte 1',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 34,
                  ),
                  textDirection: TextDirection.ltr,
                ),
                Text(
                  'Texte 2',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 34,
                  ),
                  textDirection: TextDirection.ltr,
                ),
              ]))),
    );
  }
}
