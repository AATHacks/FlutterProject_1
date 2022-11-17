// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project_2/center_widget.dart';
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
        'narendra modi',
        'bhupendra patel',
        'draupadi murmu',
        'rahul gandhi'
      ]
    },
    {
      'question': 'who is god of cricket?',
      'answers': [
        'sachin tendulkar',
        'rahul dravid',
        'yuvraj singh',
        'ms dhoni'
      ]
    },
    {
      'question': 'What\'s your favourite color?',
      'answers': ['blue', 'orange', 'white']
    }
  ];
  var _QuestionIndex = 0;

  void answerQuestion() {
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
                  answerQuestion: answerQuestion,
                  questionIndex: _QuestionIndex)
              : CenterWidget(quizCompleteMessage)),
    );
  }
}
