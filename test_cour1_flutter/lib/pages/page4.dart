import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var content = const Text(
      'Welcome to my store',
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.red, fontSize: 35),
    );
    var elm = Center(
      child: content,
    );
    var contentAppBar = const Text(
      'My Store',
    );
    var scaff = Scaffold(
      appBar: AppBar(
        title: contentAppBar,
      ),
      body: elm,
    );
    var materialApp = MaterialApp(
      home: scaff,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Exo 4"),
      ),
      body: materialApp,
    );
  }
}
