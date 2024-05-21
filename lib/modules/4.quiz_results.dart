import 'package:flutter/material.dart';
import 'package:quizzlies_app/shared/components/components/button.dart';
import '1.quiz_introPage.dart';
import '2.quiz_levels.dart';

class QuzzielesResultsPage extends StatelessWidget {
  final int score;
  const QuzzielesResultsPage({super.key,required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/10740576.jpg'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.purple,
                ),
                clipBehavior: Clip.antiAlias,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizzlesIntroPage(),
                        ));
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0 ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: const Text(
                      'Total correct answers:',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '$score out of 9 Questions',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                 vertical: 40.0
                ),
                child: Container(
                  height: 400.0,
                  width:double.infinity,
                  decoration: BoxDecoration(
                    color:Colors.deepPurpleAccent.withOpacity(0.8),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white.withOpacity(0.7)),
                      color: Colors.purple,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 80.0),
                    clipBehavior: Clip.antiAlias,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const QuizzlesIntroPage(),
                            ));
                      },
                      icon: const Text(
                        'Try Again',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
