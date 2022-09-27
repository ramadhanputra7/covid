import 'package:covid/app/modules/quiz/models/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/jenazah_controller.dart';

class JenazahView extends GetView<JenazahController> {
  const JenazahView({Key? key}) : super(key: key);
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
          flexibleSpace: Container(
            width: double.infinity,
            child: Image.network(
              imagebg,
              fit: BoxFit.fill,
            ),
          ),
          title: Container(
              color: Colors.black54, child: Text('Pengertian Jenazah')),
          centerTitle: true,
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
            Container(
              color: Colors.black54,
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
                      SB,
                      Text(
                        controller.c,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.d,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.e,
                        textAlign: texAlign,
                        style: style,
                      ),
                      Text(
                        controller.f,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.g,
                        textAlign: texAlign,
                        style: style,
                      ),
                      Text(
                        controller.h,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.i,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.j,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.k,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.l,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.m,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.n,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.o,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.p,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.q,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.r,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.s,
                        textAlign: texAlign,
                        style: style,
                      ),
                      SB,
                      Text(
                        controller.t,
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
