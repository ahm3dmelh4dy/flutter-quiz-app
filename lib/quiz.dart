import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestionHandler;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestionHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(
                  answerText: answer['text'] as String,
                  selectHandler: () =>
                      answerQuestionHandler(answer['score'] as int),
                ))
            .toList()
      ],
    );
  }
}
