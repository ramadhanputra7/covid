import 'package:get/get.dart';

import '../controllers/mengkafani_controller.dart';

class MengkafaniBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MengkafaniController>(
      () => MengkafaniController(),
    );
  }
}
