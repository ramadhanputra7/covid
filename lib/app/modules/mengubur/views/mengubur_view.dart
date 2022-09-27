import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/widgets.dart';
import '../controllers/mengubur_controller.dart';

class MenguburView extends GetView<MenguburController> {
  const MenguburView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            color: b,
            child: const Text('Menguburkan Jenazah'),
          ),
          centerTitle: true,
          flexibleSpace: BG,
        ),
        body: Stack(children: [
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
                            Text(
                              controller.b,
                              textAlign: texAlign,
                              style: style,
                            ),
                            sb1,
                            Padding(
                              padding: p,
                              child: Text(
                                controller.c,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            sb1,
                            Padding(
                              padding: p,
                              child: Text(
                                controller.d,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            sb1,
                            Padding(
                              padding: p,
                              child: Text(
                                controller.e,
                                textAlign: texAlign,
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
                            sb1,
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.i,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            sb1,
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.j,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            sb1,
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.k,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            sb1,
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.l,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            sb1,
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.m,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            sb1,
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.n,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            sb1,
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.o,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            sb1,
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.p,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            sb1,
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.q,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            sb,
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.r,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            sb1,
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.s,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.t,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.u,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.v,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                controller.w,
                                textAlign: texAlign,
                                style: style,
                              ),
                            ),
                          ]))))
        ]));
  }
}
