import 'package:covid/app/modules/quiz/controllers/quiz_controller.dart';
import 'package:covid/app/modules/quiz/views/quiz_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'body.dart';

class QuizScreen extends GetView<QuizController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Get.back();
            Get.to(() => QuizView());
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () => controller.nextQuestion(), child: Text('Skip'))
        ],
      ),
      body: Body(),
    );
  }
}
