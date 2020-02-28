import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  final int finalResultScore;

  Result(this.finalResultScore);

  // getter method
  String get resultPhrase {
    String resultText;
    if (finalResultScore <= 10) {
      resultText = 'You are Bad!!!';
    } else if (finalResultScore <= 15) {
      resultText = 'You are preety likable';
    } else if (finalResultScore <= 20) {
      resultText = 'You are awesome and innocent!!!';
    } else {
      resultText = 'You are Strange!!1';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
