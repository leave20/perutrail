import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:get/get.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {

  PageController pageController;

  var currentIndex=0.obs;

  GlobalKey bottomNavigationKey=GlobalKey();

  @override
  void onInit() {
    super.onInit();
    pageController=PageController();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }
}