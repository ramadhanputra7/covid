import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../widgets/widgets.dart';
import '../controllers/materi_controller.dart';

class Aturan extends GetView<MateriController> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.ATURAN_PERAWATAN),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          color: controller.c,
          child: ListTile(
            title: Container(child: Text('Aturan Rinci Perawatan Jenazah')),
            leading: Container(
              width: 80,
              child: Image.network(
                imageAturanPerawatan,
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
