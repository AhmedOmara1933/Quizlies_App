import 'package:flutter/material.dart';
import '../shared/components/components/components.dart';
import '1.quiz_homePage.dart';

class QuzzielesLevel extends StatelessWidget {
  const QuzzielesLevel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a175b),
      body:Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            //appbar
            Container(
              margin: const EdgeInsets.only(
                bottom: 50.0
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 70.0),
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
                              builder: (context) =>  const QuizzlesHomePage(),
                            )
                        );
                      },
                    ),
                  ),
                  const Text(
                    'Levels',
                    style: TextStyle(
                      color: Color(0xff34e2b8),
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            //levels
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       DefaultLevel(
                           number:'01',
                           levelcolor:const Color(0xff7a5cfb)
                       ),
                       DefaultLevel(
                           number:'02',
                           levelcolor:const Color(0xff287ffc)
                       ),

                     ],
                   ),
                   const SizedBox(
                     height: 40.0,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       DefaultLevel(
                           number:'03',
                           levelcolor:const Color(0xfffb652a)
                       ),
                       DefaultLevel(
                           number:'04',
                           levelcolor:const Color(0xff14b6a8)
                       ),

                     ],
                   ),
                   const SizedBox(
                     height: 40.0,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       DefaultLevel(
                           number:'05',
                           levelcolor:const Color(0xfff12490)
                       ),
                       DefaultLevel(
                           number:'06',
                           levelcolor:const Color(0xff3f2c7f)
                       ),

                     ],
                   ),
                 ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
