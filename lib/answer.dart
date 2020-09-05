import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecthandler;
  final String answerText;

  Answer(this.selecthandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      width: double.infinity,
      child: RaisedButton(
        color: Colors.green[50],
        textColor: Colors.red,
        child: Text(answerText),
        onPressed: selecthandler,
      ),
    );
  }
}
