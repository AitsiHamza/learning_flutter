import 'package:flutter/material.dart';
import 'package:test_cour1_flutter/ui/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text(
          "Home page",
        ),
      ),
    );
  }
}
