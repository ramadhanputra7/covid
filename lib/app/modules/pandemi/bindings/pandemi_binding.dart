import 'package:get/get.dart';

import '../controllers/pandemi_controller.dart';

class PandemiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PandemiController>(
      () => PandemiController(),
    );
  }
}
