import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() resetForm;

  Result(this.score, this.resetForm);

  double get scorePerc {
    return score * 100 / 25;
  }

  String get textResult {
    if (scorePerc < 70) {
      return 'Você não foi aprovado, tente novamente.';
    } else {
      return 'Você foi aprovado, parabéns!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(scorePerc < 70
                  ? Icons.close_rounded
                  : Icons.download_done_rounded),
              Text(
                textResult,
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        TextButton(
          child: Text(
            'Reiniciar',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: resetForm,
        )
      ],
    );
  }
}
