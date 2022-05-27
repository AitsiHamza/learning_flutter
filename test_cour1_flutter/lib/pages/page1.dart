import 'package:flutter/material.dart';
import 'package:test_cour1_flutter/config/global.params.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exo 1"),
      ),
      body: const Text(
        'Hello world this is a flutter app !',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
