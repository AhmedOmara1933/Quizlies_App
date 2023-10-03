import 'package:flutter/material.dart';
import 'package:quizzlies_app/shared/components/components/button.dart';
import '2.quiz_levels.dart';

class QuzzielesResultsPage extends StatelessWidget {
  final int score;
  const QuzzielesResultsPage({super.key,required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Results',
            style: TextStyle(
              color: Color(0xff34e2b8),
              fontSize: 27.0,
              fontWeight: FontWeight.bold,
            ),
          ),

        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Text(
                      'Total correct answers:',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '$score out of 9 Questions',
                      style: const TextStyle(
                          color: Color(0xff34e2b8),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
             left : 30.0,
              right: 30.0,
              bottom: 80.0
            ),
            child: Container(
              height: 400.0,
              width:double.infinity,
              decoration: BoxDecoration(
                color:const Color(0xff624ccc),
                borderRadius: BorderRadius.circular(40.0)
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Your final score is',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  CircleAvatar(
                    backgroundColor: const Color(0xfffaba2a),
                    radius: 100.0,
                    child: Text(
                      '${score*10}',
                      style: const TextStyle(
                        fontSize: 70.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          DefaultButton(
            text: 'Try Again',
            backgroundText: Colors.white,
            backgroundColor: const Color(0xff6947fe),
            icon: Icons.refresh,
            function: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>   QuzzielesLevel(),
                  )
              );
            },
          ),
        ],
      ),
    );
  }
}
