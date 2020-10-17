import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questions = [
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
            Text(this.questions[this.questionIndex]),
            RaisedButton(child: Text('A 1'), onPressed: this._answerQuestion),
            RaisedButton(child: Text('A 2'), onPressed: this._answerQuestion),
            RaisedButton(child: Text('A 3'), onPressed: this._answerQuestion),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    print('Q index before: ' + this.questionIndex.toString());
    setState(() {
      this.questionIndex++;
    });
    print('Q index after: ' + this.questionIndex.toString());

    if (this.questionIndex >= this.questions.length) {
      setState(() {
        this.questionIndex = 0;
      });
      print('Q index reset: ' + this.questionIndex.toString());
    }
    print('Question: ' + this.questions[this.questionIndex].toString());
  }
}
