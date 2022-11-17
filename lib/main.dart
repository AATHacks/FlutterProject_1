// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project_2/result.dart';
import 'package:project_2/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final String quizCompleteMessage = 'YOU DID IT!!';
  var Questions = [
    {
      'question': 'who is the president of india?',
      'answers': [
        {'text': 'narendra modi', 'score': 0},
        {'text': 'bhupendra patel', 'score': 0},
        {'text': 'draupadi murmu', 'score': 1},
        {'text': 'rahul gandhi', 'score': 0},
      ]
    },
    {
      'question': 'who is god of cricket?',
      'answers': [
        {'text': 'sachin tendulkar', 'score': 1},
        {'text': 'rahul dravid', 'score': 0},
        {'text': 'yuvrj singh', 'score': 0},
        {'text': 'ms dhoni', 'score': 0}
      ]
    },
    {
      'question': 'What\'s your favourite color?',
      'answers': [
        {'text': 'blue', 'score': 1},
        {'text': 'orange', 'score': 0},
        {'text': 'white', 'score': 1},
      ]
    }
  ];
  var _QuestionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _QuestionIndex = _QuestionIndex + 1;
    });
    if (_QuestionIndex < Questions.length) {
      print(_QuestionIndex);
    } else {
      print('No more questions!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First Flutter Designed App'),
          ),
          body: _QuestionIndex < Questions.length
              ? Quiz(
                  questions: Questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _QuestionIndex)
              : CenterWidget(_totalScore)),
    );
  }
}
