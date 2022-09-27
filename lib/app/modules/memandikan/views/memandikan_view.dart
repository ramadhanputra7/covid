import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/widgets.dart';
import '../controllers/memandikan_controller.dart';

class MemandikanView extends GetView<MemandikanController> {
  const MemandikanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Container(
            color: b,
            child: Text('Memandikan Jenazah'),
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
                      sb,
                      Text(
                        controller.b,
                        textAlign: texAlign,
                        style: style,
                      ),
                      sb,
                      Text(
                        controller.c,
                        textAlign: texAlign,
                        style: style,
                      ),
                      sb,
                      Text(
                        controller.d,
                        textAlign: texAlign,
                        style: style,
                      ),
                      sb,
                      Text(
                        controller.e,
                        textAlign: texAlign,
                        style: style,
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
                      sb2,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.g,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb2,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.h,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb2,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.i,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb2,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.j,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb2,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.k,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb2,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.l,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb2,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.m,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb2,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.n,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb2,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.o,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.p,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.q,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.r,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.x,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.y,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.z,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.aa,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.ab,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.ac,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.ad,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.ae,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.af,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.ag,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.ah,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.ai,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.aj,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.ak,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.al,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      sb,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.am,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.an,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.ao,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.ap,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.aq,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.ar,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.as,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.at,
                          textAlign: texAlign,
                          style: style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          controller.au,
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
