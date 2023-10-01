import 'package:flutter/material.dart';

class QuizzlesAbout extends StatelessWidget {
  const QuizzlesAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a175b),
      body:Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: const Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white
        ),
                    textAlign: TextAlign.center
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                color: Colors.deepPurpleAccent,
                margin: const EdgeInsets.all(30.0),
                child:const SingleChildScrollView(
                  child: Text(
                    'Welcome to the thrilling world of Quizzles, where knowledge meets excitement in '
                        'an electrifying trivia game! Quizzles is not just your ordinary quiz; it\'s a mind-bending, heart-pounding experience that'
                        ' will test your intellect, wit, and quick thinking.Gameplay'

                      'Quizzles is designed to be a fun and engaging trivia game suitable for players of all ages. Whether you\'re a trivia enthusiast or just looking for a way to challenge your brain, Quizzles has something for everyone.'

                     ' Here\'s a sneak peek at what makes Quizzles so special:'
                        'Diverse Categories: Quizzles covers a wide range of topics, from history and science to pop culture and sports. With hundreds of categories and thousands of questions, you\'ll never run out of exciting challenges'

                  'Solo or Multiplayer Mode: You can choose to play solo and compete against the clock or challenge your friends and family in multiplayer mode. Quizzles brings people together for unforgettable moments of fun and competition.'
                        'Power-Ups and Boosters: As you progress through the game, you\'ll earn power-ups and boosters to help you when the questions get tough. Use them wisely to stay in the game and outsmart your opponents.'

                  'Daily Challenges: Keep your skills sharp with daily challenges that offer fresh questions and special rewards. Rise through the ranks and become a Quizzles master.'
                        'Why Quizzles?'

                      'Quizzles isn\'t just about answering questions; it\'s about the thrill of the challenge, the joy of learning, and the excitement of victory. Whether you\'re looking for a quick brain workout or an evening of competitive trivia with friends, Quizzles has you covered.'

                     ' So, what are you waiting for? Join the millions of players around the world who have already embraced the Quizzles experience. Download the app, dive into the world of trivia, and let the games begin!'

                      'Prepare to be entertained, educated, and thoroughly engaged with Quizzles—the ultimate trivia challenge that will keep you coming back for more. Are you ready to prove your knowledge and become a Quizzles champion? It\'s time to find out!',
                    style: TextStyle(
                      color: Colors.white
                    )

                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff341d7c),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff1e1046).withOpacity(0.5),
                      // Shadow color
                      spreadRadius: 5.0,
                      // Spread radius
                      blurRadius: 7,
                      // Blur radius
                      offset: const Offset(0, 3),
                    )
                  ]),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 25.0,
                ),
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizzlesAbout(),
                      )
                  );
                },
              ),
            ),

          ],
        ),
      )
    );
  }
}
