import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/data_model_with_map.dart';
import '../shared/components/components/components.dart';

class QuizQuestionPage extends StatefulWidget {
  const QuizQuestionPage({super.key});

  @override
  State<QuizQuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuizQuestionPage> {
  DataModel? datamodel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    datamodel = DataModel.fromJson(data);
  }

  int? pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff2a175b),
        body: PageView.builder(
          physics: const BouncingScrollPhysics(),
          //controller: pageController,
          itemBuilder: (context, index) => Questionpagee(
            pageNumber: pageNumber!,
            questionCard: datamodel!.data!.questionCard![index],
          ),
          itemCount: datamodel!.data!.questionCard!.length,
          onPageChanged: (value) {
            setState(() {
              pageNumber = value;
            });
            if (kDebugMode) {
              print(value);
            }
          },
        ));
  }
}
