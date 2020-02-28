import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': "what's your favorite color?",
      'answers': [
        {'Text': 'Black', 'Score': 2},
        {'Text': 'Red', 'Score': 5},
        {'Text': 'Green', 'Score': 8},
        {'Text': 'White', 'Score': 10}
      ]
    },
    {
      'questionText': "what's your favourite animal?",
      'answers': [
        {'Text': 'cat', 'Score': 5},
        {'Text': 'dog', 'Score': 6},
        {'Text': 'rabbit', 'Score': 3},
        {'Text': 'lion', 'Score': 10}
      ]
    },
    {
      'questionText': "what's your favourite place?",
      'answers': [
        {'Text': 'Kathmandu', 'Score': 3},
        {'Text': 'Pokhara', 'Score': 5},
        {'Text': 'Gorkha', 'Score': 10},
        {'Text': 'Biratnagar', 'Score': 8}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _qIndex++;
    });
  }

  void _resetQuiz(){
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_qIndex == _questions.length)
            ? Result(_totalScore,_resetQuiz)
            : Quiz(_answerQuestion, _questions[_qIndex]['questionText'],
                _questions[_qIndex]['answers']),
      ),
    );
  }
}
