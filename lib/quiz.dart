import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final _questionIndex;
  final _questions;
  final _answerQuestion;

  Quiz(this._questionIndex, this._questions, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        _questions[_questionIndex]['questionText'],
      ),
      ...(_questions[_questionIndex]['answers'] as List).map((answer) {
        print(answer);
        return Answer(
          () => _answerQuestion(answer['score']),
          answer['label'],
        );
      }).toList()
    ]);
  }
}
