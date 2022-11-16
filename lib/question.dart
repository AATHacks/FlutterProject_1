import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  Question(this.questionText);
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: GoogleFonts.lato(
            fontSize: 28, fontStyle: FontStyle.italic, color: Colors.blue),
        textAlign: TextAlign.center,
      ),
    );
  }
}
