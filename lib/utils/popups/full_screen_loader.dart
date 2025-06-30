import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/utils/constants/colors.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';

import '../../common/widgets/loaders/animation_loader.dart';
class TFullScreenLoader{
  ///open a full screen loading dialog with a text and animation
  ///this method doesn't return anything
  ///
  /// parameters:
  /// text: the text to be displayed in loading dialog
  /// animation: the lottie animation to be shown

  static void openLoadingDialog(String text, String animation){
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false, //dialog can't be dismissed by tapping outside it
        builder: (_)=>PopScope(
      canPop: false, //disable popping with back button
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 250,),
              TAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
    ),
    );
  }


  ///stop the currently open loading dialog
///this method doesn't return anything
static stopLoading(){
    Navigator.of(Get.overlayContext!).pop(); //close the dialog using navigator
}
}