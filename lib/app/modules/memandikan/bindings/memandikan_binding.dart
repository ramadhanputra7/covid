import 'package:get/get.dart';

import '../controllers/memandikan_controller.dart';

class MemandikanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MemandikanController>(
      () => MemandikanController(),
    );
  }
}
