// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobileapp/quizz.dart';
import 'package:mobileapp/result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal',
        'answers': ['Lion', 'Monkey', 'Lizard', 'Turtle'],
      },
      {
        'questionText': 'Who\'s your favorite instructor',
        'answers': ['Max', 'Max', 'Max', 'Max'],
      },
      {
        'questionText': 'Si j\'ete vous?',
        'answers': ['Vous seriez vous?', 'EDS', 'EDR', 'La mer noire'],
      },
    ];

  void _answerQuestion() {
    
    setState(() {
      _questionIndex = (_questionIndex + 1);
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: (_questionIndex < _questions.length)
          ? Quizz(question: _questions[_questionIndex], answerQuestion: _answerQuestion)
          : Result()
      ),
    );
  }
}
