import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:covid/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:covid/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: b,
          child: const Text('PROFILE'),
        ),
        centerTitle: true,
        flexibleSpace: BG,
      ),
      body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: controller.streamUser(),
        builder: (context, snap) {
          //JIKA DATA NYA MASIH LOADING
          if (snap.connectionState == ConnectionState.waiting) {
            //TAMPILKAN CIRCULAR PROGRESS
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snap.hasData) {
            //JIKA DATANYA SUDAH DAPAT
            Map<String, dynamic> user = snap.data!.data()!;
            String defaultImage = "https://i.stack.imgur.com/l60Hf.png";
            //TAMPILKAN DATA USER
            return Stack(
              children: [
                BG,
                ListView(
                  padding: const EdgeInsets.all(20),
                  children: [
                    //GAMBAR PROFILE
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Image.network(
                              user['profile'] != null
                                  ? user['profile'] != ''
                                      ? user['profile']
                                      : defaultImage
                                  : defaultImage,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                    sb1,
                    //NAMA USER
                    Container(
                      color: b,
                      child: Text(
                        '${user['name'].toString().toUpperCase()}',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    sb1,
                    //EMAIL USER
                    Container(
                      color: b,
                      child: Text(
                        '${user['email']}',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    sb1,
                    //EMAIL USER
                    Container(
                      color: b,
                      child: Text(
                        '${user['role']}',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    sb1,
                    Container(
                      color: b,
                      child: Text(
                        '${user['nip']}',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    sb1,
                    Container(
                      color: b,
                      child: Text(
                        '${user['gender']}',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    sb1,
                    //UPDATE PROFILE
                    Container(
                      color: b,
                      child: ListTile(
                        onTap: () =>
                            Get.toNamed(Routes.UPDATE_PROFILE, arguments: user),
                        leading: Icon(Icons.person),
                        title: Text('Update Profile'),
                      ),
                    ),
                    sb1,
                    //UPDATE PASSWORD
                    Container(
                      color: b,
                      child: ListTile(
                        onTap: () => Get.toNamed(Routes.UPDATE_PASSWORD),
                        leading: Icon(Icons.vpn_key),
                        title: Text('Update Password'),
                      ),
                    ),
                    sb1,
                    //JIKA ROLENYA ADMIN
                    if (user['role'] == 'admin')
                      //TAMPILKAN MENU ADD PEGAWAI
                      Container(
                        color: b,
                        child: ListTile(
                          onTap: () => Get.toNamed(Routes.ADD_USER),
                          leading: Icon(Icons.person_add),
                          title: Text('Add User'),
                        ),
                      ),
                    sb1,
                    //LOGOUT
                    Container(
                      color: b,
                      child: ListTile(
                        onTap: () => controller.logout(),
                        leading: Icon(Icons.logout),
                        title: Text('Logout'),
                      ),
                    ),
                  ],
                ),
              ],
            );
          } else {
            //TAMPILKAN INI JIKA GAGAL MENGAMBIL DATA USER
            return Center(
              child: Text('Tidak dapat memuat data user'),
            );
          }
        },
      ),
    );
  }
}
