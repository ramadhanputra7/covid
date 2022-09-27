import 'package:covid/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_password_controller.dart';

class UpdatePasswordView extends GetView<UpdatePasswordController> {
  const UpdatePasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            color: b,
            child: const Text('UPDATE PASSWORD'),
          ),
          centerTitle: true,
          flexibleSpace: BG,
        ),
        body: Stack(
          children: [
            BG,
            ListView(
              padding: EdgeInsets.all(0),
              children: [
                Container(
                  color: b,
                  child: Obx(
                    () => TextField(
                      controller: controller.currC,
                      autocorrect: false,
                      obscureText: controller.isHidden1.value,
                      decoration: InputDecoration(
                        labelText: 'Current Password',
                        border: OutlineInputBorder(),
                        suffix: Container(
                          child: InkWell(
                            child: Icon(Icons.visibility),
                            onTap: () {
                              controller.isHidden1.value =
                                  !controller.isHidden1.value;
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: b,
                  child: Obx(
                    () => TextField(
                      controller: controller.newC,
                      autocorrect: false,
                      obscureText: controller.isHidden2.value,
                      decoration: InputDecoration(
                        labelText: 'New Password',
                        border: OutlineInputBorder(),
                        suffix: InkWell(
                          child: Icon(Icons.visibility),
                          onTap: () {
                            controller.isHidden2.value =
                                !controller.isHidden2.value;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: b,
                  child: Obx(
                    () => TextField(
                      controller: controller.confirmC,
                      autocorrect: false,
                      obscureText: controller.isHidden3.value,
                      decoration: InputDecoration(
                        labelText: 'Confirm New Password',
                        border: OutlineInputBorder(),
                        suffix: InkWell(
                          child: Icon(Icons.visibility),
                          onTap: () {
                            controller.isHidden3.value =
                                !controller.isHidden3.value;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Obx(() => ElevatedButton(
                    onPressed: () {
                      if (controller.isLoading.isFalse) {
                        controller.updatePassword();
                      }
                    },
                    child: Text(
                      (controller.isLoading.isFalse)
                          ? 'CHANGE PASSWORD'
                          : 'LOADING....',
                    )))
              ],
            ),
          ],
        ));
  }
}
