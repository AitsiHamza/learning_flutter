import 'package:flutter/material.dart';
import 'package:flutter_youssefi_tuto_1/ui/widgets/drawer.widget.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: Center(
        child: Text(
          'Gallery Page',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
