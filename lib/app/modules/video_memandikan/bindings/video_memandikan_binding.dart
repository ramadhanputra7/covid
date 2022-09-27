import 'package:get/get.dart';

import '../controllers/video_memandikan_controller.dart';

class VideoMemandikanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoMemandikanController>(
      () => VideoMemandikanController(),
    );
  }
}
