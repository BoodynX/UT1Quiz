import 'package:flutter/material.dart';

import 'package:udemy_tutorial/question.dart';
import 'package:udemy_tutorial/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[this.questionIndex]['questionText']),
        ...(questions[this.questionIndex]['answers'] as List<Map>)
            .map((answer) {
          return Answer(
              () => this.answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
