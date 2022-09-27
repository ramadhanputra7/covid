import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/materi_controller.dart';

class VideoMemandikan extends GetView<MateriController> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.VIDEO_MEMANDIKAN),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          color: controller.c,
          child: ListTile(
            tileColor: Colors.blue[300],
            title: Text('Video Tata Cara Memandikan Jenazah'),
          ),
        ),
      ),
    );
  }
}
