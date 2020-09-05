import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  var questions = [
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        'Black',
        'Red',
        'Blue',
        'Green',
      ],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        'Rabbit',
        'Dog',
        'Lion',
        'Cat',
      ],
    },
    {
      'questionText': 'Who\'s your favorite character',
      'answers': [
        'Guts',
        'Guts',
        'Guts',
        'Guts',
      ],
    },
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First app'),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex]['questionText'],
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}
