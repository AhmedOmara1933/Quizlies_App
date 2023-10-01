import 'package:flutter/material.dart';
import 'package:quizzlies_app/modules/3.quiz_question.dart';
import 'modules/1.quiz_homePage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: QuizQuestionPage(),
      ),
    );
  }
}

