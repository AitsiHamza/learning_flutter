import 'package:flutter/material.dart';
import 'package:flutter_statemanagement_tuto_3/provider/counter.state.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterState counterState=Provider.of<CounterState>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: const Text('Counter provider ')),
      body: Consumer<CounterState>(
          builder: (context, counterState, child) {
        return Center(
          child: Text(
            'Counter value => ${counterState.counter}',
            style: Theme.of(context).textTheme.headline3,
          ),
        );
      }),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {
            counterState.increment();
          }),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(child: Icon(Icons.remove), onPressed: () {
            counterState.decrement();
          }),
        ],
      ),
    );
  }
}
