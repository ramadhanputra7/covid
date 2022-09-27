import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/widgets.dart';
import '../controllers/perawatan_jenazah_controller.dart';

class PerawatanJenazahView extends GetView<PerawatanJenazahController> {
  const PerawatanJenazahView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Container(
              color: Colors.black54,
              child: const Text('Perawatan Jenazah dalam Islam')),
          centerTitle: true,
          backgroundColor: Colors.black,
          flexibleSpace: Container(
            width: double.infinity,
            child: Image.network(
              imagebg,
              fit: BoxFit.fill,
            ),
          ),
        ),
        body: Stack(
          children: [
            BG,
            Container(
              height: double.infinity,
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
