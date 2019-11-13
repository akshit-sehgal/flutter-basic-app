import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function selectHandler;

  Answer(this.text, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: RaisedButton(
        child: Text(text),
        textColor: Colors.white,
        color: Colors.green,
        onPressed: selectHandler,
      ),
    );
  }
}
