import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var qIndex = 0;
  void answerQuestion() {
    qIndex++;
    print('qIndex $qIndex');
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "what's your favorite color?",
      "what's your favourite animal?",
      "what's your favourite place?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text('The question'),
            RaisedButton(
              child: Text(
                questions[qIndex],
              ),
              onPressed: answerQuestion,
            ),
//            RaisedButton(
//              child: Text(
//                questions.elementAt(1),
//              ),
//              onPressed: answerQuestion,
//            ),
//            RaisedButton(
//              onPressed: answerQuestion,
//              child: Text(
//                questions.elementAt(2),
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}
