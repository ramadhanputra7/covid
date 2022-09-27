import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../widgets/widgets.dart';

class VideoPemulasaranController extends GetxController {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  String video =
      "https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2FTata%20Cara%20Pemulasaraan%20Jenazah%20Pasien%20Covid-19.mp4?alt=media&token=7cd9ee2a-8a35-472f-a694-e99a2f58f646";

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
