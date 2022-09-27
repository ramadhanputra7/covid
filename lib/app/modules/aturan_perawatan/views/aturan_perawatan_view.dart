import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/widgets.dart';
import '../controllers/aturan_perawatan_controller.dart';

class AturanPerawatanView extends GetView<AturanPerawatanController> {
  const AturanPerawatanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Container(
            color: b,
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: 'Aturan Rinci Perawatan Jenazah',
                style: style,
              )
            ])),
          ),
          centerTitle: true,
          flexibleSpace: BG,
        ),
        body: Stack(
          children: [
            BG,
            Container(
              color: b,
              height: d,
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 18.0, left: 15, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        controller.a,
                        textAlign: texAlign,
                        style: style,
                      ),
                      Text(
                        controller.b,
                        textAlign: texAlign,
                        style: style,
                      ),
                      Text(
                        controller.c,
                        textAlign: texAlign,
                        style: style,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.d,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Text(
                        controller.e,
                        textAlign: texAlign,
                        style: style,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
