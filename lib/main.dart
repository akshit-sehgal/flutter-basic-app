import 'package:flutter/material.dart';

// void main() {
//   runApp(new MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion(int ans) {
    setState(() {
      questionIndex = 1;
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
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: () => answerQuestion(1),
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => answerQuestion(2),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => answerQuestion(3),
          ),
          RaisedButton(
            child: Text('Answer 4'),
            onPressed: () {
              answerQuestion(4);
            },
          ),
        ],
      ),
    ));
  }
}
