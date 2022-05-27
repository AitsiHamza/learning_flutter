import 'package:flutter/material.dart';
import 'package:flutter_statemanagement_tuto_3/pages/counter.provider.page.dart';
import 'package:flutter_statemanagement_tuto_3/pages/counter.stateful.page.dart';
import 'package:flutter_statemanagement_tuto_3/provider/counter.state.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>CounterState())
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.orange
        ),
        routes: {"/": (context) => CounterProviderPage()},
      ),
    );
  }
}

