import 'package:covid/app/modules/quiz/models/constants.dart';
import 'package:covid/app/modules/quiz/views/quiz.dart';
import 'package:covid/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../controllers/quiz_controller.dart';

class QuizView extends GetView<QuizController> {
  const QuizView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.network(
          imagebg,
          height: 1200,
          width: 1200,
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 1,
                ),
                Center(
                  child: Text(
                    "Let's Play Quiz ",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                //Text('Enter your informations below'),
                // TextField(
                //   decoration: InputDecoration(
                //       filled: true,
                //       fillColor: Color(
                //         0xFF1C2341,
                //       ),
                //       hintText: 'Full Name',
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.all(
                //         Radius.circular(12),
                //       ))),
                // ),
                Spacer(),
                InkWell(
                  onTap: () => Get.toNamed(Routes.QUIZ),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(kDefaultPadding * 0.75),
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      "Let's Start Quiz",
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.HOME),
                        child: Icon(Icons.home)),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
