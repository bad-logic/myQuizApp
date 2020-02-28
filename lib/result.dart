import 'package:flutter/material.dart';

class Result extends StatelessWidget{

  final int finalResultScore;

  Result(this.finalResultScore);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Text('You did it!!! $finalResultScore'),
          RaisedButton(
            child: Text('Try Again'),
            onPressed: null,
          ),
        ],
      ),
    );
  }

}