import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPress;
  final String answerText;

  const Answer(this.onPress, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: onPress,
      ),
    );
  }
}
