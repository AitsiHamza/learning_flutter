import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_statemanagement_tuto_3/bloc/counter.bloc.dart';
import 'package:flutter_statemanagement_tuto_3/bloc/counter.cubit.dart';
import 'package:flutter_statemanagement_tuto_3/provider/counter.state.dart';
import 'package:provider/provider.dart';

class CounterBlocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter bloc ')),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, state) {
          return Center(
            child: Text(
              'Counter value => $state',
              style: Theme.of(context).textTheme.headline3,
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                BlocProvider.of<CounterBloc>(context).add(CounterEvent.INCREMENT);
              }),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                BlocProvider.of<CounterBloc>(context).add(CounterEvent.DECREMENT);
              }),
        ],
      ),
    );
  }
}
