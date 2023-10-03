import 'package:flutter/material.dart';
import '../shared/components/components/components.dart';

class QuzzielesLevel extends StatelessWidget {
  const QuzzielesLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Levels',
          style: TextStyle(
            color: Color(0xff34e2b8),
            fontSize: 27.0,
            fontWeight: FontWeight.bold,
          ),
        ),

      ),
      body:Padding(
        padding: const EdgeInsets.only(top:40.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          mainAxisSpacing: 40.0,
          ),

          children: [
            DefaultLevel(
                number:'01',
                levelcolor:const Color(0xff7a5cfb)
            ),
            DefaultLevel(
                number:'02',
                levelcolor:const Color(0xff287ffc)
            ),
            DefaultLevel(
                number:'03',
                levelcolor:const Color(0xfffb652a)
            ),
            DefaultLevel(
                number:'04',
                levelcolor:const Color(0xff14b6a8)
            ),
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
      ),
      );
  }
}
