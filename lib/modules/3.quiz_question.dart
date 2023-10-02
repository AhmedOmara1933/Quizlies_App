import 'package:flutter/material.dart';

import '../models/quiz_model.dart';
import '4.quiz_results.dart';

class QuizQuestionPage extends StatefulWidget {
  const QuizQuestionPage({super.key});

  @override
  State<QuizQuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuizQuestionPage> {
  final PageController controller = PageController();

  List<QuizModel> quizCard = [
    QuizModel(question: "Which planet is the closest to the Sun?", answers: {
      "Mercury": true,
      "Venus": false,
      "Earth": false,
      "Mars": false
    }),
    QuizModel(
        question: "Which planet has the most moons in our solar system?",
        answers: {
          "Jupiter": false,
          "Saturn": true,
          "Uranus": false,
          "Naptune": false
        }),
    QuizModel(
        question: "Which planet is the largest in our solar system?",
        answers: {
          "Jupiter": true,
          "Saturn": false,
          "Uranus": false,
          "Naptune": false
        }),
    QuizModel(
        question: "Which planet is the hottest in our solar system?",
        answers: {
          "Mercury": false,
          "Venus": true,
          "Earth": false,
          "Mars": false
        }),
    QuizModel(
        question: "Which planet does not have any moon or satellite?",
        answers: {
          "Mercury": true,
          "Venus": false,
          "Earth": false,
          "Mars": false
        }),
    QuizModel(question: "Which planet is known as the red planet?", answers: {
      "Mercury": false,
      "Venus": false,
      "Earth": false,
      "Mars": true
    }),
    QuizModel(
        question:
            "Which planet is the only one that can support life as we know it?",
        answers: {
          "Mercury": false,
          "Venus": false,
          "Earth": true,
          "Mars": false
        }),
    QuizModel(
        question: "Which planet has rings made of ice and dust particles?",
        answers: {
          "Mercury": false,
          "Saturn": true,
          "Earth": false,
          "Mars": false
        }),
    QuizModel(
        question:
            "Which planet is tilted on its axis by about 98 degrees, making it appear to spin on its side?",
        answers: {
          "Uranus": true,
          "Saturn": false,
          "Earth": false,
          "Mars": false
        }),
  ];

  int pageNumber = 0;
  int score = 0;
  int questionTrue = 0;
  bool onPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Level 5',
            style: TextStyle(
              color: Color(0xff34e2b8),
              fontSize: 27.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 30.0),
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
                  Icons.airline_stops_sharp,
                  color: Colors.white,
                  size: 25.0,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        backgroundColor: const Color(0xff2a175b),
        body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        '0${pageNumber + 1}/9',
                        style: const TextStyle(
                          color: Color(0xff34e2b8),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Text(
                      quizCard[index].question,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.0),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 30.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    height: 250.0,
                    width: double.infinity,
                    child: const Image(
                      image: AssetImage('images/1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                for (int i = 0; i < quizCard[index].answers.length; i++)
                  Container(
                    margin: const EdgeInsets.only(bottom: 15.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: double.infinity,
                    child: MaterialButton(
                      height: 55.0,
                      color: onPressed == true
                          ? quizCard[index].answers.values.toList()[i] == true
                              ? Colors.blue
                              : Colors.deepPurpleAccent
                          : Colors.deepPurpleAccent,
                      onPressed: () {
                        if (quizCard[index].answers.values.toList()[i] ==
                            true) {
                          score += 10;
                          questionTrue++;
                        }

                        setState(() {
                          onPressed = true;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(7.0),
                            margin: const EdgeInsets.only(right: 15.0),
                            decoration: BoxDecoration(
                                color: const Color(0xff34e2b8).withOpacity(0.7),
                                shape: BoxShape.circle),
                            child: Text(
                              '0${i + 1}',
                              style: const TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Text(
                            quizCard[index].answers.keys.toList()[i],
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25.0,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 120.0,
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(10.0)),
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          onPressed: () {
                            controller.previousPage(
                                duration: const Duration(microseconds: 4000),
                                curve: Curves.bounceIn);
                          },
                          child: const Text(
                            'Previous',
                            style:
                                TextStyle(color: Colors.white, fontSize: 17.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.deepPurpleAccent,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          onPressed: () {
                            if (index == quizCard.length - 1) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuzzielesResultsPage(
                                        score: score,
                                        questionTrue: questionTrue),
                                  ));
                            }
                            controller.nextPage(
                                duration: const Duration(microseconds: 4000),
                                curve: Curves.bounceIn);
                            setState(() {
                              onPressed = false;
                            });
                          },
                          child: Text(
                            index == quizCard.length - 1 ? 'Finish' : 'Next',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 17.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          itemCount: quizCard.length,
          onPageChanged: (value) {
            setState(() {
              pageNumber = value;
            });
          },
        ));
  }
}
