import 'package:covid/app/modules/quiz/views/quiz_view.dart';
import 'package:covid/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/widgets.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text(
                    'Perawatan Jenazah Covid 19',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () => Get.toNamed(Routes.MATERI),
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                imagemateri,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.to(() => QuizView()),
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                imagequiz,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 60),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () => Get.toNamed(Routes.VIDEO),
                              child: Container(
                                width: 100,
                                height: 100,
                                child: Image.network(
                                  imageVideo,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(height: 70)
                          ]),
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () => Get.toNamed(Routes.PROFILE),
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                imageprofile,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(Routes.INFO),
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                imageabout,
                                fit: BoxFit.fill,
                              ),
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
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () => controller.logout(),
            child: Icon(
              Icons.logout,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
