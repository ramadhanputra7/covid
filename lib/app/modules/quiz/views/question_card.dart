import 'package:covid/app/modules/quiz/controllers/quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/Questions.dart';
import '../models/constants.dart';
import 'body.dart';
import 'option.dart';

class QuestionCard extends GetView<QuizController> {
  const QuestionCard({
    Key? key,
    required this.question,
  }) : super(key: key);
  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              question.question,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: kBlackColor,
                  ),
            ),
            SizedBox(height: kDefaultPadding / 3),
            ...List.generate(
              question.options.length,
              (index) => Option(
                text: question.options[index],
                index: index,
                press: () => controller.checkAns(question, index),
              ),
              //growable: false,
            ),
          ],
        ),
      ),
    );
  }
}
