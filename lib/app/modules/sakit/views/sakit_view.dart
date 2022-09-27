import 'package:covid/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sakit_controller.dart';

class SakitView extends GetView<SakitController> {
  const SakitView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final SB = SizedBox(height: 5);
    final style = TextStyle(
      fontSize: 20,
      color: Colors.white,
    );

    final texAlign = TextAlign.justify;
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Container(
              color: b, child: Text('Merawat Orang Sakit dalam Islam')),
          centerTitle: true,
          flexibleSpace: BG,
        ),
        body: Stack(
          children: [
            BG,
            Container(
              height: d,
              color: b,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.b,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.c,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.d,
                          textAlign: texAlign,
                          style: style,
                        ),
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
