import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exo 6"),
      ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter listView"),
          ),
          body: ListView(
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.purple[600],
                child: const Center(
                    child: Text(
                  'Item 1',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              Container(
                height: 50,
                color: Colors.purple[600],
                child: const Center(
                    child: Text(
                  'Item 1',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              Container(
                height: 50,
                color: Colors.purple[600],
                child: const Center(
                    child: Text(
                  'Item 1',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
