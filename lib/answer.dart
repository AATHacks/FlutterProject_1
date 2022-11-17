import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String options;
  final VoidCallback selectHandler;
  Answer(this.options, this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue[200])),
            onPressed: selectHandler,
            child: Text(options)));
  }
}
