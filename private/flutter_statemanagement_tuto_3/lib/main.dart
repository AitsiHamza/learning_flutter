import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_statemanagement_tuto_3/bloc/counter.bloc.dart';
import 'package:flutter_statemanagement_tuto_3/bloc/counter.cubit.dart';
import 'package:flutter_statemanagement_tuto_3/pages/counter.bloc.page.dart';
import 'package:flutter_statemanagement_tuto_3/pages/counter.cubit.page.dart';
import 'package:flutter_statemanagement_tuto_3/pages/counter.provider.page.dart';
import 'package:flutter_statemanagement_tuto_3/pages/counter.stateful.page.dart';
import 'package:flutter_statemanagement_tuto_3/provider/counter.state.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CounterCubit(0),),
        BlocProvider(create: (context)=>CounterBloc(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink
        ),
        routes: {"/": (context) => CounterBlocPage()},
      ),
    );
  }
}

