import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}

  class MyAppState extends State<MyApp>{

    var qIndex = 0;
    List<String> questions = [
      "what's your favorite color?",
      "what's your favourite animal?",
      "what's your favourite place?"
    ];

    void answerQuestion() {
      setState(() {
        qIndex++;
        if(qIndex==questions.length){
          qIndex = 0;
        }
      });
      print('qIndex $qIndex');
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
            Text(questions[qIndex]),
            RaisedButton(
              child: Text(
                'Answer 1',
              ),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text(
                'Answer 2',
              ),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text(
                'Answer 2',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
