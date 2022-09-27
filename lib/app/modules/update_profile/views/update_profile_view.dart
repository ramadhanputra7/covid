import 'dart:io';

import 'package:covid/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_profile_controller.dart';

class UpdateProfileView extends GetView<UpdateProfileController> {
  final Map<String, dynamic> user = Get.arguments;
  Widget build(BuildContext context) {
    controller.nipC.text = user['nip'];
    controller.nameC.text = user['name'];
    controller.emailC.text = user['email'];
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: b,
          child: const Text('UPDATE PROFILE'),
        ),
        centerTitle: true,
        flexibleSpace: BG,
      ),
      body: Stack(
        children: [
          BG,
          ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Container(
                color: b,
                child: TextField(
                  readOnly: true,
                  controller: controller.nipC,
                  decoration: InputDecoration(
                      labelText: 'NIP', border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: b,
                child: TextField(
                  controller: controller.nameC,
                  decoration: InputDecoration(
                      labelText: 'Name', border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: b,
                child: TextField(
                  readOnly: true,
                  controller: controller.emailC,
                  decoration: InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                color: b,
                child: Text(
                  'Photo Profile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GetBuilder<UpdateProfileController>(builder: (c) {
                    if (c.image != null) {
                      return ClipOval(
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image.file(
                            File(c.image!.path),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    } else {
                      if (user['profile'] != null) {
                        return Column(
                          children: [
                            ClipOval(
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                  user['profile'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              color: b,
                              child: TextButton(
                                  onPressed: () {
                                    controller.deleteProfile(user['uid']);
                                  },
                                  child: Text('delete')),
                            )
                          ],
                        );
                      } else {
                        return Container(
                          color: b,
                          child: Text('No Image Choosen'),
                        );
                      }
                    }
                  }),
                  Container(
                    color: b,
                    child: TextButton(
                        onPressed: () {
                          controller.pickImage();
                        },
                        child: Text('Choose')),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Obx(
                () => ElevatedButton(
                    onPressed: () async {
                      if (controller.isLoading.isFalse) {
                        await controller.updateProfile(user['uid']);
                      }
                    },
                    child: Text(controller.isLoading.isFalse
                        ? 'UPDATE PROFILE'
                        : 'LOADING...')),
              )
            ],
          ),
        ],
      ),
    );
  }
}
