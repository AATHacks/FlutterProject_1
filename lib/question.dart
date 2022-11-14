import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Question extends StatelessWidget {
  Question(this.questionText);
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      width: double.infinity,
      color: Colors.amber[600],
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        // textAlign: TextAlign.center,
      ),
    );
  }
}
