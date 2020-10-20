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
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite car brand',
      'answers': ['Toyota', 'Fiat', 'Dacia']
    },
    {
      'questionText': 'What\'s your favorite food',
      'answers': ['Sushi', 'Kebab', 'Pizza', 'Burger', 'Hot Dog']
    },
  ];

  var _questionIndex = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: Column(
          children: [
            Question(_questions[this._questionIndex]['questionText']),
            ...(_questions[this._questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(this._answerQuestion, answer);
            }).toList()
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

    if (this._questionIndex >= _questions.length) {
      setState(() {
        this._questionIndex = 0;
      });
      print('Q index reset: ' + this._questionIndex.toString());
    }
    print('Question: ' + _questions[this._questionIndex].toString());
  }
}
