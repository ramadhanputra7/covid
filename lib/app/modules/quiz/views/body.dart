import 'package:covid/app/modules/quiz/controllers/quiz_controller.dart';
import 'package:covid/app/modules/quiz/models/Questions.dart';
import 'package:covid/app/modules/quiz/models/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'progress_bar.dart';
import 'question_card.dart';

class Body extends GetView<QuizController> {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //WebsafeSvg.asset('assets/icons/bg.svg', fit: BoxFit.fill),
        SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ProgressBar(),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                        text: 'Question ${controller.questionNumber.value}',
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: kSecondaryColor),
                        children: [
                          TextSpan(
                            text: '/${controller.questions.length}',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: kSecondaryColor),
                          )
                        ]),
                  ),
                )),
            Divider(thickness: 1.5),
            SizedBox(height: kDefaultPadding),
            Expanded(
                child: PageView.builder(
                    onPageChanged: controller.updateTheQnNum,
                    //physics: NeverScrollableScrollPhysics(),
                    controller: controller.pageController,
                    itemCount: controller.questions.length,
                    itemBuilder: (context, index) => QuestionCard(
                          question: controller.questions[index],
                        )))
          ],
        ))
      ],
    );
  }
}
