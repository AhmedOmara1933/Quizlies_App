// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:quizzlies_app/modules/3.quiz_question.dart';
//
// class DefaultLevel extends StatelessWidget {
//   String? number;
//   Color? levelcolor;
//
//   DefaultLevel({this.number, this.levelcolor});
//
//   double rating = 0.0;
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => QuizQuestionPage(),
//             ));
//       },
//       child: Column(
//         children: [
//           RatingBar.builder(
//             ignoreGestures: true,
//             initialRating: rating,
//             itemCount: 3,
//             itemSize: 40.0,
//             itemBuilder: (context, _) => const Icon(
//               Icons.star,
//               color: Colors.amber,
//             ),
//             onRatingUpdate: (newRating) {
//               rating = newRating;
//             },
//           ),
//           const SizedBox(
//             height: 10.0,
//           ),
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40.0),
//               color: levelcolor,
//             ),
//             height: 150.0,
//             width: 150.0,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   'Level',
//                   style: TextStyle(
//                       fontSize: 30.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 ),
//                 const SizedBox(
//                   height: 10.0,
//                 ),
//                 Text(
//                   '$number',
//                   style: const TextStyle(
//                       fontSize: 30.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
