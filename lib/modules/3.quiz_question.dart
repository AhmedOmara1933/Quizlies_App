import 'package:flutter/material.dart';
import 'package:quizzlies_app/modules/1.quiz_introPage.dart';
import '../models/quiz_model.dart';
import '4.quiz_results.dart';

class QuizQuestionPage extends StatefulWidget {
  final List<QuizModel> quizCard;

  const QuizQuestionPage({super.key, required this.quizCard});

  @override
  State<QuizQuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuizQuestionPage> {
  var controller = PageController();
  int pageNumber = 0;
  int score = 0;
  bool onPressed = false;
  int? selectedAnswerIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/10740576.jpg'), fit: BoxFit.cover)),
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(25.0),
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white.withOpacity(0.4)),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(100.0),
                            topRight: Radius.circular(100.0)),
                        color: Colors.deepPurpleAccent.withOpacity(0.8),
                      ),
                      //clipBehavior: Clip.antiAliasWithSaveLayer,
                      height: 55.0,
                      width: 170.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Center(
                          child: Text(
                            '0${pageNumber + 1}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),

                      //width: double.infinity,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70.0),
                        border:
                            Border.all(color: Colors.white.withOpacity(0.4)),
                        color: Colors.deepPurpleAccent.withOpacity(0.8),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      height: 180.0,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.quizCard[index].question,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              for (int i = 0; i < widget.quizCard[index].answers.length; i++)
              Container(
                  margin: const EdgeInsets.only(bottom: 15.0),
                  decoration:
                      BoxDecoration(
                          borderRadius: BorderRadius.circular(400.0),
                      ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: double.infinity,
                  child: MaterialButton(
                    height: 70.0,
                    color: onPressed == true
                        ? widget.quizCard[index].answers.values.toList()[i] ==
                                true
                            ? Colors.blue
                            : Colors.deepPurpleAccent
                        : Colors.deepPurpleAccent,
                    onPressed: () {
                      if (widget.quizCard[index].answers.values.toList()[i] ==
                          true) {
                        score++;
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
                          widget.quizCard[index].answers.keys.toList()[i],
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
                margin: const EdgeInsets.only(top:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Previous
                    Container(
                      width: 120.0,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          border:Border.all(color: Colors.white.withOpacity(0.7)),
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
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),
                      ),
                    ),
                    //Next
                    Container(
                      width: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border:Border.all(color: Colors.white.withOpacity(0.7)),
                        color: Colors.purple,
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: MaterialButton(
                        onPressed: () {
                          if (index == widget.quizCard.length - 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QuzzielesResultsPage(
                                    score: score,
                                  ),
                                ));
                          }
                          setState(() {
                            onPressed = false;
                          });
                          controller.nextPage(
                              duration: const Duration(microseconds: 4000),
                              curve: Curves.bounceIn);
                        },
                        child: Text(
                          index == widget.quizCard.length - 1
                              ? 'Finish'
                              : 'Next',
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
        itemCount: widget.quizCard.length,
        onPageChanged: (value) {
          setState(() {
            pageNumber = value;
          });
        },
      ),
    ));
  }
}
