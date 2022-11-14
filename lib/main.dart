// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project_2/question.dart';
import './answer.dart';

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
  var _QuestionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _QuestionIndex = _QuestionIndex + 1;
    });
    print(_QuestionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var Questions = [
      "Why you left this IT Field behind?",
      "Why You Stick in this government preparation?"
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First Flutter Designed App'),
            ),
            body: Column(
              children: [
                Question(Questions[_QuestionIndex]),
                Answer('Because Dinesh vaghri', _answerQuestion),
                Answer('Because of Anadkat', _answerQuestion),
                Answer('Becuase of Mausi', _answerQuestion)
                /* ElevatedButton(
                    onPressed: () =>
                        print('answer 2 chosen'), //anonymous function example
                    child: Text("Because of Anadkat")),
                ElevatedButton(
                    onPressed: () {
                      print(
                          'answer 3 chosen'); //anonymous function written in another style
                    },
                    child: Text("Because of Mausi")) */
              ],
            )));
  }
}
