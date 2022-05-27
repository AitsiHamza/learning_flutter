import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  dynamic data;
  int currentPage = 0;
  int totalPages = 0;
  int pageSize = 20;
  List<dynamic> items = [];
  ScrollController scrollController = new ScrollController();
  String query = '';

  @override
  void initState() {
    super.initState();
    String url ="https://api.github.com/search/users?q=hamza&per_page=20&page=0";
    http.get(Uri.parse(url)).then((response) {
      setState(() {
        this.data = json.decode(response.body);
        this.items.addAll(data["items"]);
      });
    }).catchError((err) {
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users Github!!!'),
      ),
      body: Center(
        child: Column(children: [
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  height: 2,
                  color: Colors.black45,
                ),
                //itemCount: (items == null) ? 0 : data['items'].length,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    "${items[index]['avatar_url']}"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text("${items[index]['login']}"),
                            ],
                          ),
                          CircleAvatar(child: Text("${items[index]['score']}"))
                        ]),
                  );
                }),
          )
        ]),
      ),
    );
  }

}
