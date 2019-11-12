import 'package:flutter/material.dart';

// void main() {
//   runApp(new MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Basic App')),
      body: Text('This is the body text'),
    ));
  }
}
