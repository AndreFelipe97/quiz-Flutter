import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int questionSelected;
  final List<Map<String, Object>> questions;
  final void Function(int) answer;

  Quiz(
    this.questionSelected,
    this.questions,
    this.answer,
  );

  bool get haveQuestionSelected {
    print(questions.length);
    return questionSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =
        haveQuestionSelected ? questions[questionSelected]['answers'] : null;

    return Column(
      children: <Widget>[
        Question(questions[questionSelected]['question']),
        ...answers
            .map((a) => Answer(a['answer'], () => answer(a['score'])))
            .toList(),
      ],
    );
  }
}
