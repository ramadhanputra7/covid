import 'package:covid/app/modules/quiz/controllers/quiz_controller.dart';
import 'package:covid/app/modules/quiz/models/constants.dart';
import 'package:covid/app/modules/quiz/views/quiz.dart';
import 'package:covid/app/modules/quiz/views/quiz_view.dart';
import 'package:covid/app/modules/widgets/widgets.dart';
import 'package:covid/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScoreScreen extends GetView<QuizController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          BG,
          Column(
            children: [
              Spacer(
                flex: 3,
              ),
              Container(
                color: b,
                child: Text(
                  'Score',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: kSecondaryColor),
                ),
              ),
              Spacer(flex: 2),
              controller.correctAns != null
                  ? Container(
                      color: b,
                      child: Text(
                          '${controller.numOfCorrectAns * 5}/${controller.questions.length * 5}',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: kSecondaryColor)),
                    )
                  : Container(
                      color: b,
                      child: Text('0/0',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: kSecondaryColor)),
                    ),
              Spacer(
                flex: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Get.delete<QuizController>();
                        Get.toNamed(Routes.HOME);
                      },
                      child: Icon(Icons.home)),
                  ElevatedButton(
                      onPressed: () {
                        Get.back();
                        Get.delete<QuizController>();
                        Get.to(() => QuizView());
                      },
                      child: Icon(Icons.autorenew_rounded)),
                ],
              ),
              Spacer(
                flex: 3,
              ),
            ],
          )
        ],
      ),
    );
  }
}
