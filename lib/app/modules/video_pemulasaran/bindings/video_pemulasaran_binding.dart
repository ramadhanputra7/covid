import 'package:get/get.dart';

import '../controllers/video_pemulasaran_controller.dart';

class VideoPemulasaranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoPemulasaranController>(
      () => VideoPemulasaranController(),
    );
  }
}
