// import 'package:flutter/material.dart';
// import '../models/quiz_model.dart';
// import '../shared/components/components/components.dart';
// import '3.quiz_question.dart';
//
// class QuzzielesLevel extends StatelessWidget {
//   const QuzzielesLevel({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Levels',
//           style: TextStyle(
//             color: Color(0xff34e2b8),
//             fontSize: 27.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 40.0),
//         child: GridView(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 40.0,
//           ),
//           children: [
//             DefaultLevel(
//                 number: '01',
//                 levelcolor: const Color(0xff7a5cfb),
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => QuizQuestionPage(
//                           quizCard: [
//                             QuizModel(
//                                 question:
//                                     "Which planet is the closest to the Sun?",
//                                 answers: {
//                                   "Mercury": true,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet has the most moons in our solar system?",
//                                 answers: {
//                                   "Jupiter": false,
//                                   "Saturn": true,
//                                   "Uranus": false,
//                                   "Naptune": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the largest in our solar system?",
//                                 answers: {
//                                   "Jupiter": true,
//                                   "Saturn": false,
//                                   "Uranus": false,
//                                   "Naptune": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the hottest in our solar system?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": true,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet does not have any moon or satellite?",
//                                 answers: {
//                                   "Mercury": true,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is known as the red planet?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": true
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the only one that can support life as we know it?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": false,
//                                   "Earth": true,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet has rings made of ice and dust particles?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Saturn": true,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is tilted on its axis by about 98 degrees, making it appear to spin on its side?",
//                                 answers: {
//                                   "Uranus": true,
//                                   "Saturn": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                           ],
//                         ),
//                       ));
//                 }),
//             DefaultLevel(
//                 number: '02',
//                 levelcolor: const Color(0xff287ffc),
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => QuizQuestionPage(
//                           quizCard: [
//                             QuizModel(
//                                 question:
//                                     "Which planet is the closest to the Sun?",
//                                 answers: {
//                                   "Mercury": true,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet has the most moons in our solar system?",
//                                 answers: {
//                                   "Jupiter": false,
//                                   "Saturn": true,
//                                   "Uranus": false,
//                                   "Naptune": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the largest in our solar system?",
//                                 answers: {
//                                   "Jupiter": true,
//                                   "Saturn": false,
//                                   "Uranus": false,
//                                   "Naptune": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the hottest in our solar system?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": true,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet does not have any moon or satellite?",
//                                 answers: {
//                                   "Mercury": true,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is known as the red planet?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": true
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the only one that can support life as we know it?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": false,
//                                   "Earth": true,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet has rings made of ice and dust particles?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Saturn": true,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is tilted on its axis by about 98 degrees, making it appear to spin on its side?",
//                                 answers: {
//                                   "Uranus": true,
//                                   "Saturn": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                           ],
//                         ),
//                       ));
//                 }),
//             DefaultLevel(
//                 number: '03',
//                 levelcolor: const Color(0xfffb652a),
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => QuizQuestionPage(
//                           quizCard: [
//                             QuizModel(
//                                 question:
//                                     "Which planet is the closest to the Sun?",
//                                 answers: {
//                                   "Mercury": true,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet has the most moons in our solar system?",
//                                 answers: {
//                                   "Jupiter": false,
//                                   "Saturn": true,
//                                   "Uranus": false,
//                                   "Naptune": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the largest in our solar system?",
//                                 answers: {
//                                   "Jupiter": true,
//                                   "Saturn": false,
//                                   "Uranus": false,
//                                   "Naptune": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the hottest in our solar system?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": true,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet does not have any moon or satellite?",
//                                 answers: {
//                                   "Mercury": true,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is known as the red planet?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": true
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the only one that can support life as we know it?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": false,
//                                   "Earth": true,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet has rings made of ice and dust particles?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Saturn": true,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is tilted on its axis by about 98 degrees, making it appear to spin on its side?",
//                                 answers: {
//                                   "Uranus": true,
//                                   "Saturn": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                           ],
//                         ),
//                       ));
//                 }),
//             DefaultLevel(
//                 number: '04',
//                 levelcolor: const Color(0xff14b6a8),
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => QuizQuestionPage(
//                           quizCard: [
//                             QuizModel(
//                                 question:
//                                     "Which planet is the closest to the Sun?",
//                                 answers: {
//                                   "Mercury": true,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet has the most moons in our solar system?",
//                                 answers: {
//                                   "Jupiter": false,
//                                   "Saturn": true,
//                                   "Uranus": false,
//                                   "Naptune": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the largest in our solar system?",
//                                 answers: {
//                                   "Jupiter": true,
//                                   "Saturn": false,
//                                   "Uranus": false,
//                                   "Naptune": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the hottest in our solar system?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": true,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet does not have any moon or satellite?",
//                                 answers: {
//                                   "Mercury": true,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is known as the red planet?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": true
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the only one that can support life as we know it?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": false,
//                                   "Earth": true,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet has rings made of ice and dust particles?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Saturn": true,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is tilted on its axis by about 98 degrees, making it appear to spin on its side?",
//                                 answers: {
//                                   "Uranus": true,
//                                   "Saturn": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                           ],
//                         ),
//                       ));
//                 }),
//             DefaultLevel(
//                 number: '05',
//                 levelcolor: const Color(0xfff12490),
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => QuizQuestionPage(
//                           quizCard: [
//                             QuizModel(
//                                 question:
//                                     "Which planet is the closest to the Sun?",
//                                 answers: {
//                                   "Mercury": true,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet has the most moons in our solar system?",
//                                 answers: {
//                                   "Jupiter": false,
//                                   "Saturn": true,
//                                   "Uranus": false,
//                                   "Naptune": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the largest in our solar system?",
//                                 answers: {
//                                   "Jupiter": true,
//                                   "Saturn": false,
//                                   "Uranus": false,
//                                   "Naptune": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the hottest in our solar system?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": true,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet does not have any moon or satellite?",
//                                 answers: {
//                                   "Mercury": true,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is known as the red planet?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": true
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the only one that can support life as we know it?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": false,
//                                   "Earth": true,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet has rings made of ice and dust particles?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Saturn": true,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is tilted on its axis by about 98 degrees, making it appear to spin on its side?",
//                                 answers: {
//                                   "Uranus": true,
//                                   "Saturn": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                           ],
//                         ),
//                       ));
//                 }),
//             DefaultLevel(
//                 number: '06',
//                 levelcolor: const Color(0xff3f2c7f),
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => QuizQuestionPage(
//                           quizCard: [
//                             QuizModel(
//                                 question:
//                                     "Which planet is the closest to the Sun?",
//                                 answers: {
//                                   "Mercury": true,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet has the most moons in our solar system?",
//                                 answers: {
//                                   "Jupiter": false,
//                                   "Saturn": true,
//                                   "Uranus": false,
//                                   "Naptune": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the largest in our solar system?",
//                                 answers: {
//                                   "Jupiter": true,
//                                   "Saturn": false,
//                                   "Uranus": false,
//                                   "Naptune": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the hottest in our solar system?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": true,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet does not have any moon or satellite?",
//                                 answers: {
//                                   "Mercury": true,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is known as the red planet?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": false,
//                                   "Earth": false,
//                                   "Mars": true
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is the only one that can support life as we know it?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Venus": false,
//                                   "Earth": true,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet has rings made of ice and dust particles?",
//                                 answers: {
//                                   "Mercury": false,
//                                   "Saturn": true,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                             QuizModel(
//                                 question:
//                                     "Which planet is tilted on its axis by about 98 degrees, making it appear to spin on its side?",
//                                 answers: {
//                                   "Uranus": true,
//                                   "Saturn": false,
//                                   "Earth": false,
//                                   "Mars": false
//                                 }),
//                           ],
//                         ),
//                       ));
//                 }),
//           ],
//         ),
//       ),
//     );
//   }
// }
