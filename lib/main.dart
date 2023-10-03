import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        scaffoldBackgroundColor:const Color(0xff2a175b),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xff2a175b),
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor:const Color(0xff2a175b),
          ),
              elevation: 0.0,
          )
      ),
      home: const QuizzlesHomePage(),
    );
  }
}
