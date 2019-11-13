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
  int _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'White ', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favourite animals?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Lion', 'score': 5},
        {'text': 'Kitten', 'score': 3},
        {'text': 'Dog ', 'score': 1}
      ]
    },
    {
      'questionText': 'Which is your favourite programming language?',
      'answers': [
        {'text': 'Java', 'score': 10},
        {'text': 'Javascript', 'score': 5},
        {'text': 'Dart', 'score': 3},
        {'text': 'C# ', 'score': 1}
      ]
    }
  ];
  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      _totalScore += score;
      print(_totalScore);
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Basic App')),
        body: _questionIndex == _questions.length
            ? Result(_totalScore,_resetQuiz)
            : Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ),
      ),
    );
  }
}
