import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget{

  final Function answerQuestion;
  final String questionText;
  final List<Map<dynamic,dynamic>> answers;

  Quiz(this.answerQuestion, this.questionText,this.answers);

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Question(questionText),
        // ... => Spread operator, here extracts the widgets from the lists
        // and gets added as a individual value for the outer lists. <Widget>[] list.
        ...(answers).map((answer) {
          return Answer(answer['Text'], () => answerQuestion(answer['Score'])); // returns answer widgets
        }).toList(), // list of answer widgets
      ],
    );
  }

}