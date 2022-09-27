import 'package:get/get.dart';

import '../controllers/sakaratul_controller.dart';

class SakaratulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SakaratulController>(
      () => SakaratulController(),
    );
  }
}
