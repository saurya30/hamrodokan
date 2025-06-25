import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  ///variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  ///update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  ///jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  ///update current index and jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){

      Get.offAll(LoginScreen());
    } else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///update current index and jump to the last page
  void skipPage(){
    Get.offAll(LoginScreen());
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
