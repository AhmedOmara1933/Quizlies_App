import 'package:flutter/material.dart';

class QuizQuestion extends StatelessWidget {
  final int pageNumber;
  final String text;

  const QuizQuestion({
    super.key,
    required this.pageNumber,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
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
                text,
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
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: 250.0,
              width: double.infinity,
              child: const Image(
                image: AssetImage('images/1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: MaterialButton(
              height: 50.0,
             color: Colors.white,
                onPressed:(){},
              child: Text(
                ''
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15.0),
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
                    onPressed: () {},
                    child: const Text(
                      'Previous',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
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
                    onPressed: () {},
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
