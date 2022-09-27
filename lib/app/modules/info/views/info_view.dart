import 'package:covid/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/info_controller.dart';

class InfoView extends GetView<InfoController> {
  const InfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            color: b,
            child: Text('About Me'),
          ),
          centerTitle: true,
          flexibleSpace: BG,
        ),
        body: Stack(
          children: [
            BG,
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        color: b,
                        width: 200,
                        height: 200,
                        child: Image.network(controller.b),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: b,
                  child: Column(
                    children: [
                      Text('Nama : Ari Muhammad Hasan'),
                      Text('NIM : 1755201006'),
                      Text('Jurusan : Teknik Informatika'),
                      Text('Universitas : Abdurrab'),
                      Text('Tempat/ Tanggal Lahir : Grobogan, 14 Maret 1996'),
                      Text('Agama : Islam'),
                      Text(
                        'Nomor HP : 081268657538',
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: b,
                    child: Text(
                      controller.a,
                      style: style,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
