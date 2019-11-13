import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Black', 'Red', 'Blue', 'Green']
    },
    {
      'questionText': 'What\'s your favourite animals?',
      'answers': ['Rabbit', 'Snake', 'Lion', 'Cow']
    },
    {
      'questionText': 'Which is your favourite programming language?',
      'answers': ['C++', 'Java', 'Javascript', 'Dart']
    }
  ];
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Basic App')),
        body: _questionIndex == _questions.length
            ? Result()
            : Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ),
      ),
    );
  }
}
