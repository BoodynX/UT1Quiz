import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: Column(
          children: [
            Text('Questions'),
            RaisedButton(child: Text('A 1'), onPressed: this._answerQuestion),
            RaisedButton(child: Text('A 2'), onPressed: this._answerQuestion),
            RaisedButton(child: Text('A 3'), onPressed: this._answerQuestion),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    print('Answer chose!');
  }
}
