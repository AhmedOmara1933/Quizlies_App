import 'package:flutter/material.dart';
import 'package:quizzlies_app/shared/components/components/custom_button.dart';
import 'package:quizzlies_app/shared/components/components/function.dart';
import '../models/quiz_model.dart';
import '3.quiz_question.dart';

class QuizzlesIntroPage extends StatelessWidget {
  const QuizzlesIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/10740576.jpg'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(
                  'images/Screenshot_2024-05-20_164310-removebg-preview.png',
                ),
                height: 250.0,
                width: 400.0,
              ),
              const SizedBox(
                height: 50.0,
              ),
              const Text(
                'Let\'s Play!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Play now and Enjoy',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomButton(
                text: 'Play Now',
                onPressed: () {
                  navigateTo(
                      context,
                      QuizQuestionPage(
                        quizCard: [
                          QuizModel(
                              question:
                                  "Which planet is the closest to the Sun?",
                              answers: {
                                "Mercury": true,
                                "Venus": false,
                                "Earth": false,
                                "Mars": false
                              }),
                          QuizModel(
                              question: "What is the largest ocean on Earth?",
                              answers: {
                                "Pacific Ocean": true,
                                "Arctic Ocean": false,
                                "Indian Ocean": false,
                                "Atlantic Ocean": false
                              }),
                          QuizModel(
                              question:
                                  "Which planet is the largest in our solar system?",
                              answers: {
                                "Jupiter": true,
                                "Saturn": false,
                                "Uranus": false,
                                "Naptune": false
                              }),
                          QuizModel(
                              question: "What is the capital of France?",
                              answers: {
                                "Rome": false,
                                "Paris": true,
                                "Madrid": false,
                                "Berlin": false
                              }),
                          QuizModel(
                              question:
                                  "Which element has the chemical symbol 'O ?'",
                              answers: {
                                "Oxygen": true,
                                "Gold": false,
                                "Osmium": false,
                                "Oganesson": false
                              }),
                          QuizModel(
                              question:
                                  "Which planet is known as the red planet?",
                              answers: {
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
                              question:
                                  "Which country is the largest by land area?",
                              answers: {
                                "China": false,
                                "Russia": true,
                                "United States": false,
                                "Canada": false
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
                        ],
                      ),
                      false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
