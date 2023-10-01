import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quizzlies_app/models/data_model_with_map.dart';
import '../../../modules/3.quiz_question.dart';
class DefaultQuestion extends StatelessWidget {
  String? questionNumber;
  String? questionName;

  DefaultQuestion({this.questionNumber, this.questionName});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.deepPurpleAccent,
            child: Text(
              '01',
              style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Text(
            '$questionName',
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                letterSpacing: 1.0),
          )
        ],
      ),
    );
  }
}

//todo////////////////////////////////////////////////////////////////
class DefaultLevel extends StatelessWidget {
  String? number;
  Color? levelcolor;

  DefaultLevel({this.number, this.levelcolor});

  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizQuestionPage(),
            ));
      },
      child: Column(
        children: [
          RatingBar.builder(
            ignoreGestures: true,
            initialRating: rating,
            itemCount: 3,
            itemSize: 40.0,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (newRating) {
              rating = newRating;
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: levelcolor,
            ),
            height: 150.0,
            width: 150.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Level',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  '$number',
                  style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
//todo////////////////////////////////////////////////////////////////

// class Questionpagee extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Padding(
//       padding: const EdgeInsets.all(30.0),
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(bottom: 20.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Container(
//                   margin: const EdgeInsets.only(right: 70.0),
//                   child: const Text(
//                     'Level 5',
//                     style: TextStyle(
//                       color: Color(0xff34e2b8),
//                       fontSize: 27.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: const Color(0xff341d7c),
//                       shape: BoxShape.circle,
//                       boxShadow: [
//                         BoxShadow(
//                           color: const Color(0xff1e1046).withOpacity(0.5),
//                           // Shadow color
//                           spreadRadius: 5.0,
//                           // Spread radius
//                           blurRadius: 7,
//                           // Blur radius
//                           offset: const Offset(0, 3),
//                         )
//                       ]),
//                   child: IconButton(
//                     icon: const Icon(
//                       Icons.airline_stops_sharp,
//                       color: Colors.white,
//                       size: 25.0,
//                     ),
//                     onPressed: () {},
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 margin: const EdgeInsets.only(bottom: 10.0),
//                 child: Text(
//                   '0${pageNumber + 1}/9',
//                   style: const TextStyle(
//                     color: Color(0xff34e2b8),
//                     fontSize: 16.0,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ),
//               Text(
//                 '${questionCard.questionName}',
//                 style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.w500,
//                     letterSpacing: 1.0),
//               ),
//             ],
//           ),
//           Expanded(
//             child: Container(
//               margin: const EdgeInsets.symmetric(vertical: 30.0),
//               decoration:
//                   BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
//               clipBehavior: Clip.antiAliasWithSaveLayer,
//               height: 250.0,
//               width: double.infinity,
//               child: const Image(
//                 image: AssetImage('images/1.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Column(
//             children: [
//               DefaultQuestion(
//                 questionNumber: '01',
//                 questionName: '${questionCard.questionNumber1}',
//               ),
//               DefaultQuestion(
//                 questionNumber: '02',
//                 questionName: '${questionCard.questionNumber2}',
//               ),
//               DefaultQuestion(
//                 questionNumber: '03',
//                 questionName: '${questionCard.questionNumber3}',
//               ),
//               DefaultQuestion(
//                 questionNumber: '04',
//                 questionName: '${questionCard.questionNumber4}',
//               ),
//             ],
//           ),
//           Container(
//             margin: const EdgeInsets.only(top: 15.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   width: 120.0,
//                   decoration: BoxDecoration(
//                       color: Colors.deepPurpleAccent,
//                       borderRadius: BorderRadius.circular(10.0)),
//                   clipBehavior: Clip.antiAlias,
//                   child: MaterialButton(
//                     onPressed: () {},
//                     child: const Text(
//                       'Previous',
//                       style: TextStyle(color: Colors.white, fontSize: 17.0),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 120.0,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     color: Colors.deepPurpleAccent,
//                   ),
//                   clipBehavior: Clip.antiAlias,
//                   child: MaterialButton(
//                     onPressed: () {
//                     },
//                     child: const Text(
//                       'Next',
//                       style: TextStyle(color: Colors.white, fontSize: 17.0),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
