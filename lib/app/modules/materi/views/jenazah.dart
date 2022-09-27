import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../widgets/widgets.dart';
import '../controllers/materi_controller.dart';

class Jenazah extends GetView<MateriController> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.JENAZAH),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          color: controller.c,
          child: ListTile(
            title: Text('Pengertian Jenazah/Mayat dalam Islam'),
            leading: Container(
              alignment: Alignment.topLeft,
              width: 80,
              child: Image.network(
                imagejenazah,
                fit: BoxFit.fill,
                alignment: Alignment.topLeft,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
