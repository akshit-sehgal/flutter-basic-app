import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  Question({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Column(children: [
          Text(
            text,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          Icon(
            Icons.question_answer,
            color: Color.fromARGB(128, 0, 0, 0),
            size: 24.0,
          )
        ]));
  }
}
