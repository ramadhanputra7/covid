import 'package:get/get.dart';

import '../controllers/meninggal_controller.dart';

class MeninggalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MeninggalController>(
      () => MeninggalController(),
    );
  }
}
