import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultString;
    if (resultScore <= 8) {
      resultString = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultString = 'Pretty Likeable';
    } else if (resultScore <= 16) {
      resultString = 'Moderate';
    } else {
      resultString = 'You are pretty bad !';
    }
    return resultString;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
