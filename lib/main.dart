import 'package:flutter/material.dart';
import 'package:udemy_tutorial/quiz.dart';
import 'package:udemy_tutorial/result.dart';

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
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favorite car brand',
      'answers': [
        {'text': 'Toyota', 'score': 10},
        {'text': 'Fiat', 'score': 20},
        {'text': 'Dacia', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite food',
      'answers': [
        {'text': 'Sushi', 'score': 100},
        {'text': 'Kebab', 'score': 200},
        {'text': 'Pizza', 'score': 300},
        {'text': 'Burger', 'score': 400},
        {'text': 'Hot Dog', 'score': 500}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: this._questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: this._questionIndex,
                answerQuestion: this._answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      this._questionIndex++;
    });
  }
}
