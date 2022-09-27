import 'package:covid/app/modules/aturan_perawatan/views/aturan_perawatan_view.dart';
import 'package:covid/app/modules/materi/views/anjuran_terhadap_jenazah.dart';
import 'package:covid/app/modules/materi/views/memadikan_jenazah.dart';
import 'package:covid/app/modules/materi/views/mengkafani.dart';
import 'package:covid/app/modules/materi/views/menguburkan.dart';
import 'package:covid/app/modules/materi/views/menshalatkan.dart';
import 'package:covid/app/modules/materi/views/penanganan_pandemi.dart';
import 'package:covid/app/modules/materi/views/perawatan_jenazah.dart';
import 'package:covid/app/modules/materi/views/sakaratul_maut.dart';
import 'package:covid/app/modules/materi/views/sakit.dart';
import 'package:covid/app/modules/materi/views/video_memandikan.dart';
import 'package:covid/app/modules/materi/views/video_mengkafani.dart';
import 'package:covid/app/modules/materi/views/video_menguburkan.dart';
import 'package:covid/app/modules/materi/views/video_shalat.dart';

import 'package:covid/app/modules/widgets/widgets.dart';
import 'package:covid/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/materi_controller.dart';
import 'aturan_perawatan_jenazah.dart';
import 'jenazah.dart';

class MateriView extends GetView<MateriController> {
  const MateriView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final SB = SizedBox(
      height: 5,
    );
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Container(
            color: b,
            child: const Text(
              'Materi',
              style: TextStyle(color: Color.fromARGB(255, 252, 251, 251)),
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            child: Image.network(
              imagebg,
              fit: BoxFit.fill,
            ),
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              child: Image.network(
                imagebg,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 0),
              child: ListView(
                children: [
                  Jenazah(),
                  SizedBox(
                    height: 5,
                  ),
                  PerawatanJenazah(),
                  SizedBox(
                    height: 5,
                  ),
                  Sakit(),
                  SizedBox(
                    height: 5,
                  ),
                  SakaratulMaut(),
                  SizedBox(
                    height: 5,
                  ),
                  Meninggal(),
                  SB,
                  Aturan(),
                  SB,
                  Memandikan(),
                  sb2,
                  kafan(),
                  sb2,
                  Menshalatkan(),
                  sb2,
                  Menguburkan(),
                  SB,
                  Pandemi(),
                  sb2,
                ],
              ),
            ),
          ],
        ));
  }
}
