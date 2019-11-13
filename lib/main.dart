import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
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
    if (_questionIndex < questions.length) {
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
        body: _questionIndex == questions.length
            ? Center(child: Text('You have done it'))
            : Column(
                children: [
                  Question(text: questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answer, _answerQuestion);
                  }).toList()
                ],
              ),
      ),
    );
  }
}
