import 'package:covid/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:covid/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(color: b, child: const Text('LOGIN')),
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
                    controller: controller.emailC,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: b,
                  child: Obx(
                    () => TextField(
                      controller: controller.passC,
                      obscureText: controller.isHidden.value,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        suffix: InkWell(
                          child: Icon(Icons.visibility),
                          onTap: () {
                            controller.isHidden.value =
                                !controller.isHidden.value;
                          },
                        ),
                      ),
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  () => ElevatedButton(
                    onPressed: () async {
                      if (controller.isLoading.isFalse) {
                        await controller.login();
                      }
                    },
                    child: Text(
                      controller.isLoading.isFalse ? 'LOGIN' : 'LOADING...',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  color: b,
                  child: TextButton(
                    onPressed: () => Get.toNamed(Routes.FORGOT_PASSWORD),
                    child: Text(
                      'Lupa Password ??',
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
