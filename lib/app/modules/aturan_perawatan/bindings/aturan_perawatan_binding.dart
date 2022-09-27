import 'package:get/get.dart';

import '../controllers/aturan_perawatan_controller.dart';

class AturanPerawatanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AturanPerawatanController>(
      () => AturanPerawatanController(),
    );
  }
}
