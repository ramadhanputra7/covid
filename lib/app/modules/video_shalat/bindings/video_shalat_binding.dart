import 'package:get/get.dart';

import '../controllers/video_shalat_controller.dart';

class VideoShalatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoShalatController>(
      () => VideoShalatController(),
    );
  }
}
