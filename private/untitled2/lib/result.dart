import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhraze {
    var resultText = 'yeeeh -> ${resultScore} !!';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhraze,
            style: TextStyle(fontSize: 53, fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify,
          ),
          FlatButton(
              onPressed: () => resetHandler,textColor: Colors.cyan, child: Text('Restart quiz!'))
        ],
      ),
    );
  }
}
