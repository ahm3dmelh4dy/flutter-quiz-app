import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;
  Answer({this.answerText, this.selectHandler});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answerText,
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
          textStyle: TextStyle(
            fontSize: 16.0,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
