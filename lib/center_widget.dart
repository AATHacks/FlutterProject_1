import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  CenterWidget(this.displayMessage);
  final String displayMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        displayMessage,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
      ),
    );
  }
}
