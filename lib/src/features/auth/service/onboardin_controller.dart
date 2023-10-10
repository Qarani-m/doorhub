import 'package:doorhub/src/features/auth/views/welcom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingController extends GetxController {
  PageController pageController = PageController();
  List<String> text = [
    "We provide   professional services at a friendly price",
    "The best results and your satisfaction are our top priorities",
    "Let's make some owsome changes to your home"
  ];

Future<void> getStarted()async{
  SharedPreferences prefs =await SharedPreferences.getInstance();
  prefs.setBool("isFirsTimer", true);
  Get.offAll(Welcome());
}

  void nextBtn(int pageindex) async{
    pageindex ==2?await getStarted():
    pageController.nextPage(
      duration:
          const Duration(milliseconds: 300), // You can adjust the duration
      curve: Curves.bounceIn,
    );
  }
}
