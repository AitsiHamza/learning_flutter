import 'package:cour_flutter_api/widgets/drawer.widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
