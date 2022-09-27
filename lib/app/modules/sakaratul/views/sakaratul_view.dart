import 'package:covid/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sakaratul_controller.dart';

class SakaratulView extends GetView<SakaratulController> {
  const SakaratulView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontSize: 20,
      color: Colors.white,
    );

    final texAlign = TextAlign.justify;
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Container(
            color: b,
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: 'Anjuran Menjelang Ajal (Sakaratul Maut)',
                style: style,
              )
            ])),
          ),
          centerTitle: true,
          backgroundColor: b,
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
                      sb,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.b,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb1,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.c,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb1,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.d,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb1,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.e,
                          textAlign: TextAlign.justify,
                          style: style,
                        ),
                      ),
                      sb1,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.f,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb1,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.g,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb1,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.h,
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
