// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project_2/question.dart';

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

  void _onPressedResult() {
    setState(() {
      _QuestionIndex = _QuestionIndex + 1;
    });
    print('Button Pressed');
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
                ElevatedButton(
                    onPressed: _onPressedResult,
                    child: Text('Because of Dinesh')),
                ElevatedButton(
                    onPressed: () =>
                        print('answer 2 chosen'), //anonymous function example
                    child: Text("Because of Anadkat")),
                ElevatedButton(
                    onPressed: () {
                      print(
                          'answer 3 chosen'); //anonymous function written in another style
                    },
                    child: Text("Because of Mausi"))
              ],
            )));
  }
}
