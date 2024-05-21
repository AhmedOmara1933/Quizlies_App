import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modules/1.quiz_introPage.dart';

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
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
            ),
            elevation: 0.0,
          )),
      home: const QuizzlesIntroPage(),
    );
  }
}
