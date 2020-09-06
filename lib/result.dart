import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function _resetQuiz;

  Result(this._score, this._resetQuiz);

  String get resultPhrase {
    return 'Felicidades , acertaste la pregunta ${_score}';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restar Quiz'),
            onPressed: _resetQuiz,
            color: Colors.teal[100],
          ),
        ],
      ),
    );
  }
}
