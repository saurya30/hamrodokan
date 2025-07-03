import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/common/widgets/loaders/loaders.dart';
import 'package:hamrodokan/common/widgets/widgets_success_screen/success_screen.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';

import '../../../../data/repositories/authentication/authentication_repository.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  ///send email whenever Verify Screen appears and set timer for auto redirect
  @override
  void onInit() {
    sendEmailVerification();
    setTimerAutoRedirect();
    super.onInit();
  }

  ///send email verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      TLoaders.successSnackBar(
        title: 'Email sent',
        message: 'Please check your inbox and verify your email.',
      );
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh snap! ', message: e.toString());
    }
  }

  ///Timer to automatically redirect on Email Verification
  setTimerAutoRedirect() {
    Timer.periodic(Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(
          () => SuccessScreen(
            image: TImages.emailVerificaton,
            title: 'Account has been created successfully.',
            subtitle:
                'Please log in and enjoy offers and shopping at best prices.',
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ),
        );
      }
    });
  }

  ///Manually check if email verified
  checkEmailVerificationStatus() async{
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified){
      Get.off(
              () => SuccessScreen(
            image: TImages.dockerAnimation,
            title: 'Account has been created successfully.',
            subtitle:
            'Please log in and enjoy offers and shopping at best prices.',
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ),
      );
    }
  }
}
