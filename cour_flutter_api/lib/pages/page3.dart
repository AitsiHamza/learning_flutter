import 'dart:convert';

import 'package:cour_flutter_api/pages/User.dart';
import 'package:cour_flutter_api/widgets/details.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("api json place holder"),),
      body: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Page3(title: 'Users'),
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var results=10;
  Future<List<User>> _getUsers() async {
    var data =
    await http.get(Uri.https('randomuser.me', 'api', {'results': '${results}'}));

    var jsonData = json.decode(data.body);

    List<User> users = [];

    for (var u in jsonData['results']) {
      User user = User(
          u["gender"],
          u["name"]["title"] +
              " " +
              u["name"]["first"] +
              " " +
              u["name"]["last"],
          u["email"],
          u["phone"],
          u["picture"]["medium"]);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if(snapshot.data == null){
              return Container(
                  child: Center(
                      child: Text("Loading...")
                  )
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card (color: Colors.tealAccent,child:ListTile(
                    leading: CircleAvatar(backgroundImage:
                    NetworkImage(snapshot.data[index].picture)),
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].email),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DetailPage(snapshot.data[index]))
                      );
                    },
                  ));
                },
              );
            }
          },
        ),
      ),
    );
  }
}


