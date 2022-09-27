import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../widgets/widgets.dart';
import '../controllers/materi_controller.dart';

class SakaratulMaut extends GetView<MateriController> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.SAKARATUL),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          color: controller.c,
          child: ListTile(
            title: Text('Anjuran Menjelang Sakaratul Maut'),
            leading: Container(
              width: 80,
              child: Image.network(
                imageSakaratul,
                width: 100,
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
