import 'package:chewie/chewie.dart';
import 'package:covid/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoMemandikanController extends GetxController {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  String video =
      "https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2FTata%20Cara%20Memandikan%20Jenazah.mp4?alt=media&token=b15afe70-4394-4ded-b487-e4a4602fb51f";

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
