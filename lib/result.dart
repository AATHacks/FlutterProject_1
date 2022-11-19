import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  CenterWidget(this.score, this.resetHandler);
  int score;
  final VoidCallback resetHandler;
  String completeMessage = 'you did it!';
  String get resultPhase {
    if (score == 0) {
      completeMessage = 'you\'re dumb';
    } else if (score == 1) {
      completeMessage = 'needs improvement';
    } else if (score == 2) {
      completeMessage = 'you did it great';
    } else {
      completeMessage = 'you are Topper!!';
    }
    return completeMessage;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.w600, color: Colors.green),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetHandler, child: Text("Restart Quiz!")),
        ],
      ),
    );
  }
}
