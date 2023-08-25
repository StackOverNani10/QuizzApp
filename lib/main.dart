import 'package:flutter/material.dart';
import 'package:quizz_app/quiz_brain.dart';
import 'question.dart';

void main() => runApp(QuizzApp());

class QuizzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData();
    return MaterialApp(
      title: 'Quizz App',
      home: QuizzBrain(),
    );
  }
}
