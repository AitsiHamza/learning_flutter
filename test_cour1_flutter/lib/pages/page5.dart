import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var contentAppBar = const Text(
      'My Store',
    );
    var scaff = Scaffold(
      appBar: AppBar(
        title: contentAppBar,
      ),
      body: myListView(),
    );
    var materialApp = MaterialApp(
      home: scaff,
    );

    var mywidget = materialApp;
    return Scaffold(
      appBar: AppBar(
        title: Text("Exo 5"),
      ),
      body: mywidget,
    );
  }

  Widget myListView() {
    var content1 = Container(
        color: Colors.deepOrange,
        child: const Text('Liste des items',
            style: TextStyle(color: Colors.white, fontSize: 25)));
    var listTile1 = const ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text("Item 1"),
      subtitle: Text("une chemise rouge"),
      trailing: Icon(Icons.accessibility),
    );
    var list = ListView(
      children: <Widget>[content1, listTile1, listTile1, listTile1],
    );
    return list;
  }
}
