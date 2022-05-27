import 'package:flutter/material.dart';

class Page7 extends StatefulWidget {
  @override
  State<Page7> createState() => _Page7();
}

class _Page7 extends State<Page7> {
  Color color = Colors.purple;
  late FloatingActionButton flb;

  @override
  void initState() {
    flb = FloatingActionButton.extended(
      onPressed: () {
        setState(() {
          color = (color == Colors.purple) ? Colors.blue : Colors.purple;
        });
      },
      label: const Text('Change color'),
      icon: const Icon(Icons.adb),
      backgroundColor: Colors.pink,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exo 7"),
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
                color: color.withAlpha(500),
                child: const Center(
                    child: Text(
                  'Item 1',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              Container(
                height: 50,
                color: color.withAlpha(400),
                child: const Center(
                    child: Text(
                  'Item 1',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              Container(
                height: 50,
                color: color.withAlpha(300),
                child: const Center(
                    child: Text(
                  'Item 1',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
            ],
          ),
          floatingActionButton: flb,
        ),
      ),
    );
  }
}
