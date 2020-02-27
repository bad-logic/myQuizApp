import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  var _qIndex = 0;
 var questions = [
    {
      'questionText': "what's your favorite color?",
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': "what's your favourite animal?",
      'answers': ['cat','dog','rabbit','lion']
    },
    {
      'questionText': "what's your favourite place?",
      'answers': ['Kathmandu','Pokhara',' Gorkha','Biratnagar']
    }
  ];

  void _answerQuestion() {

    setState(() {
      _qIndex++;
      if (_qIndex == questions.length) {
        _qIndex = 0;
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_qIndex]['questionText']),
            // ... => Spread operator, here extracts the widgets from the lists
            // and gets added as a individual value for the uter lists. <Widget>[] list.
            ...(questions[_qIndex]['answers'] as List<String>).map((answer) {
              return  Answer(answer,_answerQuestion); // returns answer widgets
            }).toList(),// list of answer widgets
          ],
        ),
      ),
    );
  }
}
