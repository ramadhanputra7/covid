import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/widgets.dart';
import '../controllers/video_mengkafani_controller.dart';

class VideoMengkafaniView extends GetView<VideoMengkafaniController> {
  const VideoMengkafaniView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: b,
          child: Text('VideoMengkafaniView'),
        ),
        centerTitle: true,
        flexibleSpace: BG,
      ),
      body: Stack(
        children: [
          BG,
          Column(
            children: [
              GetBuilder<VideoMengkafaniController>(
                  init: VideoMengkafaniController(),
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
