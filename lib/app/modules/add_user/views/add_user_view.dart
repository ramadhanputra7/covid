import 'package:covid/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_user_controller.dart';

class AddUserView extends GetView<AddUserController> {
  const AddUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(color: b, child: const Text('ADD USER')),
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
                  controller: controller.nipC,
                  decoration: InputDecoration(
                      labelText: 'NISN/NIK', border: OutlineInputBorder()),
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
                  controller: controller.emailC,
                  decoration: InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder()),
                ),
              ),
              sb1,
              Container(
                color: b,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Gender',
                        style: style,
                      ),
                    ),
                    Row(
                      children: [
                        Obx(
                          () => Radio(
                            value: 'Male',
                            groupValue: controller.selectedGender.value,
                            onChanged: (value) {
                              controller.oncChangeGender(value);
                            },
                            activeColor: b,
                          ),
                        ),
                        Text(
                          'Male',
                          style: styleB,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Obx(
                          () => Radio(
                            value: 'Female',
                            groupValue: controller.selectedGender.value,
                            onChanged: (value) {
                              controller.oncChangeGender(value);
                            },
                            activeColor: b,
                          ),
                        ),
                        Text(
                          'Female',
                          style: styleB,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              sb1,
              Container(
                color: b,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Role',
                        style: style,
                      ),
                    ),
                    Row(
                      children: [
                        Obx(
                          () => Radio(
                            value: 'Guru',
                            groupValue: controller.selectedRole.value,
                            onChanged: (value) {
                              controller.onChangeRole(value);
                            },
                            activeColor: b,
                          ),
                        ),
                        Text(
                          'Guru',
                          style: styleB,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Obx(
                          () => Radio(
                            value: 'Siswa',
                            groupValue: controller.selectedRole.value,
                            onChanged: (value) {
                              controller.onChangeRole(value);
                            },
                            activeColor: b,
                          ),
                        ),
                        Text(
                          'Siswa',
                          style: styleB,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
              ),
              Obx(
                () => ElevatedButton(
                    onPressed: () async {
                      if (controller.isLoading.isFalse) {
                        await controller.addStaff();
                      }
                    },
                    child: Text(controller.isLoading.isFalse
                        ? 'ADD USER'
                        : 'LOADING...')),
              )
            ],
          ),
        ],
      ),
    );
  }
}
