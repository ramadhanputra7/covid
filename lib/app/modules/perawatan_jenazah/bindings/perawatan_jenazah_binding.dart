import 'package:get/get.dart';

import '../controllers/perawatan_jenazah_controller.dart';

class PerawatanJenazahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PerawatanJenazahController>(
      () => PerawatanJenazahController(),
    );
  }
}
