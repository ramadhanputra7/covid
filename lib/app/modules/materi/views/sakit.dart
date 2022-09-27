import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../widgets/widgets.dart';
import '../controllers/materi_controller.dart';

class Sakit extends GetView<MateriController> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.SAKIT),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          color: Colors.black54,
          child: ListTile(
            title: Text('Merawat Orang Sakit dalam Islam'),
            leading: Container(
              alignment: Alignment.topLeft,
              width: 80,
              height: 90,
              child: Image.network(
                imageSakit,
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
