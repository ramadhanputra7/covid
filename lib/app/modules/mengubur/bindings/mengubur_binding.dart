import 'package:get/get.dart';

import '../controllers/mengubur_controller.dart';

class MenguburBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenguburController>(
      () => MenguburController(),
    );
  }
}
