import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:covid/app/routes/app_pages.dart';

class AddUserController extends GetxController {
  var selectedGender = ''.obs;
  var selectedRole = ''.obs;
  RxBool isLoading = false.obs;
  RxBool isLoadingAddPegawai = false.obs;
  TextEditingController nipC = TextEditingController();
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController pass2C = TextEditingController();
  TextEditingController passAdminC = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  oncChangeGender(var gender) {
    selectedGender.value = gender;
  }

  onChangeRole(var role) {
    selectedRole.value = role;
  }

  Future<void> prosesAddPegawai() async {
    if (passAdminC.text.isNotEmpty) {
      String emailAdmin = auth.currentUser!.email!;
      isLoadingAddPegawai.value = true;
      try {
        UserCredential userCredentialAdmin =
            await auth.signInWithEmailAndPassword(
                email: emailAdmin, password: passAdminC.text);
        //Register with Email and Password
        UserCredential pegawaiCredential =
            await auth.createUserWithEmailAndPassword(
                email: emailC.text, password: 'password');
        //Add User TO DataBase
        if (pegawaiCredential.user != null) {
          String uid = pegawaiCredential.user!.uid;
          await firestore.collection('pegawai').doc(uid).set({
            'nip': nipC.text,
            'name': nameC.text,
            'email': emailC.text,
            'gender': selectedGender.value,
            'role': selectedRole.value,
            'uid': uid,
            'createdAt': DateTime.now().toIso8601String()
          });
          //SEND EMAIL VERIFICATION
          await pegawaiCredential.user!.sendEmailVerification();
          await auth.signOut();
          UserCredential userCredentialAdmin =
              await auth.signInWithEmailAndPassword(
            email: emailAdmin,
            password: passAdminC.text,
          );

          Get.back();
          Get.back();
          isLoading.value = false;
          Get.snackbar('Berhasil', 'Berhasil menambahkan pegawai');
        }

        print(pegawaiCredential);
      } on FirebaseAuthException catch (e) {
        isLoadingAddPegawai.value = false;
        print(e);
        if (e.code == 'weak-password') {
          Get.snackbar(
              'Terjadi Kesalahan', 'Password yang digunakan terlalu singkat');
          print('The password provided is to weak');
        } else if (e.code == 'email-already-in-use') {
          Get.snackbar('Terjadi kesalahan', 'Pegawai sudah ada!!!');
          print('The account already exists for that email');
        } else if (e.code == 'wrong-password') {
          Get.snackbar('Terjadi Kesalahan', 'Password Salah');
        } else {
          Get.snackbar('Terjadi Kesalahan', '${e.code}');
        }
      } catch (e) {
        isLoadingAddPegawai.value = false;
        Get.snackbar('Terjadi kesalahan', 'Tidak dapat menambahkan pegawai');
        if (nameC.text.isEmpty) {
          Get.snackbar('Terjadi Kesalahan', 'Nama Tidak boleh kosong');
        } else if (nameC.text.length < 3) {
          Get.snackbar('Terjadi Kesalahan', 'Nama Minimal 3 Huruf');
        } else if (nameC.text.length > 50) {
          Get.snackbar('Terjadi Kesalahan', 'Nama Maksimal 50 Huruf');
        } else if (emailC.text.isEmail == false) {
          Get.snackbar('Terjadi Kesalahan', 'Email Tidak Valid');
        } else if (emailC.text.isEmpty) {
          Get.snackbar('Terjadi Kesalahan', 'Email Tidak Boleh Kosong');
        } else {
          isLoading.value = false;
          Get.snackbar('Terjadi Kesalahan',
              'Password wajib diisi untuk keperluan validasi');
        }
      }
    }
  }

  Future<void> addStaff() async {
    if (nipC.text.isNotEmpty &&
        nameC.text.isNotEmpty &&
        emailC.text.isNotEmpty &&
        nameC.text.length > 3 &&
        nameC.text.length < 50 &&
        emailC.text.isEmail) {
      isLoading.value = true;
      Get.defaultDialog(
          title: 'Validasi Admin',
          content: Column(
            children: [
              Text('Masukkan Password untuk validasi admin'),
              TextField(
                controller: passAdminC,
                autocorrect: false,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
          actions: [
            OutlinedButton(
                onPressed: () {
                  isLoading.value = false;
                  Get.back();
                },
                child: Text(
                  'CANCEL',
                )),
            Obx(
              () => ElevatedButton(
                  onPressed: () async {
                    if (isLoadingAddPegawai.isFalse) {
                      await prosesAddPegawai();
                    }
                    isLoading.value = false;
                  },
                  child: Text(isLoadingAddPegawai.isFalse
                      ? 'ADD PEGAWAI'
                      : 'LOADING...')),
            )
          ]);

      //eksekusi

    } else {
      print('Terjadi kesalahan' 'NIP, Nama dan Email harus diisi!!!');
      Get.snackbar(
          'Terjadi kesalahan', 'NIP, Nama, Job dan Email harus diisi!!!');
    }
  }
}
