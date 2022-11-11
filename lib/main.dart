import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var QuestionIndex = 0;

  void onPressedResult() {
    setState(() {
      QuestionIndex = QuestionIndex + 1;
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
                Text(Questions[QuestionIndex]),
                ElevatedButton(
                    onPressed: onPressedResult,
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
