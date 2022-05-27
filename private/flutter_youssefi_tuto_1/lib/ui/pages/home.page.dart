import 'package:flutter/material.dart';
import 'package:flutter_youssefi_tuto_1/ui/widgets/drawer.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text(
          'Home yaaa!',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
