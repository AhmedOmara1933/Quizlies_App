import 'package:flutter/material.dart';
import 'package:quizzlies_app/shared/components/components/button.dart';
import '5.quiz_about.dart';
import '2.quiz_levels.dart';

class QuizzlesHomePage extends StatelessWidget {
  const QuizzlesHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a175b),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                const Image(
                  image: AssetImage('images/Screenshot 2023-09-02 201942.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50.0, bottom: 100.0),
                  child: const Column(
                    children: [
                      Text(
                        'Let\'s Play!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Play now and Level Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            DefaultButton(
              text: 'Play Now',
              backgroundColor: const Color(0xff6947fe),
              backgroundText: Colors.white,
              function: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuzzielesLevel(),
                    ));
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            DefaultButton(
              text: 'About',
              backgroundColor: const Color(0xff1e1046),
              backgroundText: const Color(0xff4a34ad),
              function: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuizzlesAbout(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
