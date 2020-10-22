import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  String get resultPhrase {
    String resultText;
    if (this.totalScore == 111) {
      resultText = 'Could not be less dude!';
    } else if (this.totalScore < 500) {
      resultText = 'Try harder it\'s not that complicated';
    } else if (this.totalScore < 400) {
      resultText = 'Try harder it\'s not that complicated';
    } else if (this.totalScore < 533) {
      resultText = 'You are getting close';
    } else if (this.totalScore == 534) {
      resultText = 'Boom! MAX points!';
    } else {
      resultText = 'Some how you got out of the original scope =O';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        this.resultPhrase + '\n\n Score: ' + totalScore.toString(),
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
