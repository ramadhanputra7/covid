import 'package:get/get.dart';

import '../controllers/quiz_controller.dart';

class ScoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizController>(
      () => QuizController(),
    );
  }
}
