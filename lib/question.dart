import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Question extends StatelessWidget {
  Question(this.questionText);
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
