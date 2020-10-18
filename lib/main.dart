import 'package:flutter/material.dart';

import 'package:udemy_tutorial/question.dart';

import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = ['Q 1', 'Q 2', 'Q 3'];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: Column(
          children: [
            Question(this._questions[this._questionIndex]),
            Answer(this._answerQuestion),
            Answer(this._answerQuestion),
            Answer(this._answerQuestion),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    print('Q index before: ' + this._questionIndex.toString());
    setState(() {
      this._questionIndex++;
    });
    print('Q index after: ' + this._questionIndex.toString());

    if (this._questionIndex >= this._questions.length) {
      setState(() {
        this._questionIndex = 0;
      });
      print('Q index reset: ' + this._questionIndex.toString());
    }
    print('Question: ' + this._questions[this._questionIndex].toString());
  }
}
