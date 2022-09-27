import 'package:get/get.dart';

import '../controllers/jenazah_controller.dart';

class JenazahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JenazahController>(
      () => JenazahController(),
    );
  }
}
