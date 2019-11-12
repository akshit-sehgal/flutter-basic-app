import 'package:flutter/material.dart';

// void main() {
//   runApp(new MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion(int ans) {
    setState(() {
      _questionIndex = 1;
    });
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(questions[_questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: () => _answerQuestion(1),
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => _answerQuestion(2),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => _answerQuestion(3),
          ),
          RaisedButton(
            child: Text('Answer 4'),
            onPressed: () {
              _answerQuestion(4);
            },
          ),
        ],
      ),
    ));
  }
}
