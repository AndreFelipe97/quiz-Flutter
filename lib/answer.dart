import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() answer;

  Answer(this.text, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(text),
        onPressed: answer,
      ),
    );
  }
}
