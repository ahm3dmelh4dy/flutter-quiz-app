import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuizHandler;
  Result({this.totalScore, this.resetQuizHandler});

  String get resultPhrase {
    return totalScore <= 8
        ? 'You are awesome!'
        : totalScore <= 12
            ? 'Pretty likable!'
            : totalScore <= 16
                ? 'You are strange!'
                : 'You are so bad!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetQuizHandler,
            child: Text(
              'Reset the quiz',
            ),
          )
        ],
      ),
    );
  }
}
