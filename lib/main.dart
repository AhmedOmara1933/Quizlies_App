import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizzlies_app/modules/3.quiz_question.dart';
import 'modules/1.quiz_homePage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xff)
          ),
          backgroundColor: Color(0xff),
          elevation: 0.0
        )
      ),
      home: QuizQuestionPage(),
    );
  }
}

