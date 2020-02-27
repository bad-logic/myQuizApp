import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function _answerQuestion;
  final String _answer;
  Answer(this._answer, this._answerQuestion);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(_answer),
        onPressed: _answerQuestion,
      ),
    );

  }

}
