import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quizz extends StatelessWidget {
  final Map<String, Object> question;
  final VoidCallback answerQuestion;

  const Quizz( {required this.question, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question((question['questionText'] as String)),
      ...(question['answers'] as List<String>).map((answer) {
        return Answer(answerQuestion, answer);
      }).toList(),
    ]);
  }
}
