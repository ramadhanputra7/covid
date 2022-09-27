import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../widgets/widgets.dart';
import '../controllers/video_controller.dart';

class VideoView extends GetView<VideoController> {
  const VideoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          imagebg,
          height: 1200,
          width: 1200,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Container(
              color: b,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Video Perawatan Jenazah Covid 19',
                  style: style,
                )
              ])),
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
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 70),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () => Get.toNamed(Routes.VIDEO_MEMANDIKAN),
                            child: Column(
                              children: [
                                Container(
                                    width: 150,
                                    height: 150,
                                    child: Image.network(imageMemandikan)),
                                Container(
                                    width: 150,
                                    height: 50,
                                    child: Container(
                                      color: b,
                                      child: Text(
                                          'Video Tata Cara Memandikan Jenazah'),
                                    )),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(Routes.VIDEO_MENGKAFANI),
                            child: Column(
                              children: [
                                Container(
                                    width: 150,
                                    height: 150,
                                    child: Image.network(imageMengkafani)),
                                Container(
                                    width: 150,
                                    height: 50,
                                    child: Container(
                                      color: b,
                                      child: Text(
                                          'Video Tata Cara Mengkafani Jenazah'),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () => Get.toNamed(Routes.VIDEO_SHALAT),
                            child: Column(
                              children: [
                                Container(
                                    width: 150,
                                    height: 150,
                                    child: Image.network(imageShalat)),
                                Container(
                                    width: 150,
                                    height: 50,
                                    child: Container(
                                      color: b,
                                      child: Text(
                                          'Video Tata Cara Shalat Jenazah'),
                                    )),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(Routes.VIDEO_PEMULASARAN),
                            child: Column(
                              children: [
                                Container(
                                    width: 150,
                                    height: 150,
                                    child: Image.network(imagePemulasaran)),
                                Container(
                                    width: 150,
                                    height: 50,
                                    child: Container(
                                      color: b,
                                      child: Text(
                                          'Video Tata Cara Pemulasaran Jenazah Covid 19'),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
