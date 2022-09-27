import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/widgets.dart';
import '../controllers/video_pemulasaran_controller.dart';

class VideoPemulasaranView extends GetView<VideoPemulasaranController> {
  const VideoPemulasaranView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: b,
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: 'Tata Cara Pemulasaran Jenazah Covid',
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
          Column(
            children: [
              GetBuilder<VideoPemulasaranController>(
                  init: VideoPemulasaranController(),
                  builder: (controller) => Expanded(
                        child: Center(
                            child: controller.chewieController != null &&
                                    controller
                                        .chewieController!
                                        .videoPlayerController
                                        .value
                                        .isInitialized
                                ? Chewie(
                                    controller: controller.chewieController!)
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircularProgressIndicator(),
                                      sb1,
                                      Text('Loading')
                                    ],
                                  )),
                      ))
            ],
          ),
        ],
      ),
    );
  }
}
