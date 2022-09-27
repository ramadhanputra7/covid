import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../widgets/widgets.dart';
import '../controllers/materi_controller.dart';

class kafan extends GetView<MateriController> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.MENGKAFANI),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          color: controller.c,
          child: ListTile(
            tileColor: Colors.blue[300],
            title: Text('Mengkafani Jenazah'),
            leading: Container(
              width: 80,
              child: Image.network(
                imageMengkafani,
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
