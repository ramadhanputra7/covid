import 'package:covid/app/modules/memandikan/controllers/memandikan_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/widgets.dart';
import '../controllers/video_memandikan_controller.dart';
import 'package:chewie/chewie.dart';

class VideoMemandikanView extends GetView<VideoMemandikanController> {
  const VideoMemandikanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Memandikan Jenazah'),
        centerTitle: true,
        flexibleSpace: Container(
          child: BG,
        ),
      ),
      body: Stack(
        children: [
          BG,
          Column(
            children: [
              GetBuilder<VideoMemandikanController>(
                  init: VideoMemandikanController(),
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
