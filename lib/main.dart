import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore = _totalScore + score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {'label': 'Black', 'score': 5},
        {'label': 'red', 'score': 0},
        {'label': 'blue', 'score': 10},
        {'label': 'green', 'score': 15},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'label': 'Rabbit', 'score': 5},
        {'label': 'Dog', 'score': 15},
        {'label': 'Horse', 'score': 0},
        {'label': 'Cat', 'score': 10},
      ],
    },
    {
      'questionText': 'Who\'s your favorite character',
      'answers': [
        {'label': 'guts', 'score': 20},
        {'label': 'guts', 'score': 20},
        {'label': 'guts', 'score': 20},
        {'label': 'guts', 'score': 20},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First app'),
          ),
          body: _questionIndex < questions.length
              ? Quiz(_questionIndex, questions, _answerQuestion)
              : Result(_totalScore,_resetQuiz)),
    );
  }
}
