import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../widgets/widgets.dart';

class VideoMengkafaniController extends GetxController {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  String video =
      "https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2FPRAKTEK%20MENGKAFANI%20JENAZAH%20_%20Buya%20Yahya.mp4?alt=media&token=dfb2c4b6-f212-4711-b090-be77f3c83715";

  @override
  void onInit() {
    super.onInit();
    initializePlayer();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.dispose();
    videoPlayerController.dispose();
    chewieController!.dispose();
  }

  Future<void> initializePlayer() async {
    videoPlayerController = VideoPlayerController.network(video);
    await Future.wait([videoPlayerController.initialize()]);
    chewieController = ChewieController(
        aspectRatio: 4 / 2,
        videoPlayerController: videoPlayerController,
        autoPlay: true,
        looping: false,
        materialProgressColors: ChewieProgressColors(
            playedColor: Colors.red,
            handleColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            bufferedColor: Colors.transparent),
        placeholder: Container(
          child: BG,
        ),
        autoInitialize: false);
    update();
  }
}
