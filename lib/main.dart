import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void onPressedResult() {
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
                Text(Questions[0]),
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
