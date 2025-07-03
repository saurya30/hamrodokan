import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hamrodokan/common/widgets/loaders/loaders.dart';
import 'package:hamrodokan/data/repositories/authentication/authentication_repository.dart';
import 'package:hamrodokan/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';
import 'package:hamrodokan/utils/helpers/network_manager.dart';
import 'package:hamrodokan/utils/popups/full_screen_loader.dart';

class ForgetPasswordController extends GetxController{
  static ForgetPasswordController get instance => Get.find();

  ///variables
final email =TextEditingController();
GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

///send reset password email
  sendPasswordResetEmail() async{
    try{
      //start loading
      TFullScreenLoader.openLoadingDialog('Processing your request...', TImages.dockerAnimation);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        TFullScreenLoader.stopLoading();
        return;
      }

      //form validation
      if(!forgetPasswordFormKey.currentState!.validate()){
        TFullScreenLoader.stopLoading();
        return;
      }

      //send email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());

      //remove loader
      TFullScreenLoader.stopLoading();

      //show success screen
      TLoaders.successSnackBar(title: 'Email sent',message: 'email link sent to reset your password'.tr);

      //redirect
      Get.to(()=>ResetPassword(email:email.text.trim()));
    } catch(e){
      //remove loader
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh snap',message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async{
    try{
      //start loading
      TFullScreenLoader.openLoadingDialog('Processing your request...', TImages.dockerAnimation);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        TFullScreenLoader.stopLoading();
        return;
      }

      //send email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      //remove loader
      TFullScreenLoader.stopLoading();

      //show success screen
      TLoaders.successSnackBar(title: 'Email sent',message: 'email link sent to reset your password'.tr);

    } catch(e){
      //remove loader
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh snap',message: e.toString());
    }
  }


}