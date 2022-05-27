import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_github_tuto_2/pages/repositories/repositories.dart';
import 'package:http/http.dart' as http;

class UsersPage extends StatefulWidget {
  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  String query = '';
  bool notVisible = false;
  TextEditingController queryTextEditingController =
      new TextEditingController();
  dynamic data;
  int currentPage = 0;
  int totalPages = 0;
  int pageSize = 20;
  List<dynamic> items = [];
  ScrollController scrollController = new ScrollController();

  void _search(String query) {
    String url =
        "https://api.github.com/search/users?q=${query}&per_page=$pageSize&page=$currentPage";
    http.get(Uri.parse(url)).then((response) {
      setState(() {
        this.data = json.decode(response.body);
        this.items.addAll(data["items"]);
        if (data['total_count'] % pageSize == 0) {
          this.totalPages = this.data['total_count'] ~/ pageSize;
        } else {
          this.totalPages = (this.data['total_count'] / pageSize).floor() + 1;
        }
      });
    }).catchError((err) {
      print(err);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        setState(() {
          if (currentPage < totalPages - 1) {
            ++currentPage;
            _search(query);
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users => ${query} => $currentPage / $totalPages'),
      ),
      body: Center(
        child: Column(children: [
          Row(
            children: [
              Expanded(
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      obscureText: notVisible,
                      onChanged: (value) {
                        setState(() {
                          this.query = value;
                        });
                      },
                      controller: queryTextEditingController,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                notVisible = !notVisible;
                              });
                            },
                            icon: Icon(notVisible == true
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.limeAccent))),
                    )),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      items = [];
                      currentPage = 0;
                      this.query = queryTextEditingController.text;
                      _search(query);
                    });
                  },
                  icon: Icon(Icons.search))
            ],
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                      height: 2,
                      color: Colors.black45,
                    ),
                controller: scrollController,
                //itemCount: (items == null) ? 0 : data['items'].length,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GitRepositoriesPage(
                                    login: items[index]['login'],
                                    avatarUrl: items[index]['avatar_url'],
                                  )));
                    },
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
