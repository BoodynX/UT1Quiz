import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = [
    'Q 1',
    'Q 2',
    'Q 3'
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: Column(
          children: [
            Text(this._questions[this._questionIndex]),
            RaisedButton(child: Text('A 1'), onPressed: this._answerQuestion),
            RaisedButton(child: Text('A 2'), onPressed: this._answerQuestion),
            RaisedButton(child: Text('A 3'), onPressed: this._answerQuestion),
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
