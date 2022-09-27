import 'package:get/get.dart';

import '../controllers/video_mengkafani_controller.dart';

class VideoMengkafaniBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoMengkafaniController>(
      () => VideoMengkafaniController(),
    );
  }
}
