import 'package:flutter/material.dart';
import 'package:flutter_youssefi_tuto_1/ui/widgets/drawer.widget.dart';

class MeteoPage extends StatelessWidget {
  const MeteoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Meteo'),
      ),
      body: Center(
        child: Text(
          'Meteo Page',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
