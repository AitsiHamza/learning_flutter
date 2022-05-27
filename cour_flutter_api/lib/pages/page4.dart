import 'dart:convert';

import 'package:cour_flutter_api/config/global.params.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  dynamic data;
  List<dynamic> items = [];

  @override
  void initState() {
    super.initState();
    String url = "${GlobalParams.rootUrl}/users/all";
    http.get(Uri.parse(url)).then((response) {
      setState(() {
        this.data = json.decode(response.body);
        this.items.addAll(data);
      });
    }).catchError((err) {
      print(err);
    });
    print(items);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users api spring boot!'),
      ),
      body: Center(
        child: Column(children: [
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  height: 2,
                  color: Colors.black45,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    title: Text("${items[index]['nom']}"),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
