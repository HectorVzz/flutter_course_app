import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecthandler;
  final String answerText;

  Answer(this.selecthandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[200],
      width: double.infinity,
      child: RaisedButton(
        color: Colors.purple[50],
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: selecthandler,
      ),
    );
  }
}
