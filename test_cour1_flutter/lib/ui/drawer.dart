import 'package:flutter/material.dart';
import 'package:test_cour1_flutter/config/global.params.dart';

import '../config/global.params.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.amber, Colors.blue])),
            child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("../../images/unknown.png"),
                    ),
                  ]),
            ),
          ),
          ...(GlobalParams.menus as List).map((item) {
            return Column(children: [
              ListTile(
                title: Text(
                  item['title'],
                  style: TextStyle(fontSize: 22),
                ),
                leading: item['icon'],
                trailing:
                Icon(Icons.arrow_right_alt_outlined, color: Colors.blue),
                onTap: () {
                  Navigator.pushNamed(context, item['route']);
                },
              ),
              Divider(color: Colors.lightGreen,height: 5,),
            ]);
          })
        ],
      ),
    );
  }
}
