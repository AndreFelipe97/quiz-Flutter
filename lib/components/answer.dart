import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() answer;

  Answer(this.text, this.answer);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(text),
            onPressed: answer,
          )
        : ElevatedButton(
            child: Text(text),
            onPressed: answer,
          );
  }
}
