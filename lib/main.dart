import 'package:flutter/material.dart';

// void main() {
//   runApp(new MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Something');
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animals?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Basic App')),
      body: Column(
        children: [
          Text('The question is: '),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 4'),
            onPressed: answerQuestion,
          ),
        ],
      ),
    ));
  }
}
