import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/common/widgets/loaders/loaders.dart';
import 'package:hamrodokan/data/repositories/authentication/authentication_repository.dart';
import 'package:hamrodokan/data/repositories/user/user_repository.dart';
import 'package:hamrodokan/features/authentication/screens/signup/verify_email.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';

import '../../../../utils/helpers/network_manager.dart';
import '../../../../user_model.dart';
import '../../../../utils/popups/full_screen_loader.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  ///variables
  final hidePassword = true.obs;                 // observable for hiding/showing password
  final privacyPolicy = true.obs;                 // observable for privacy policy acceptance
  final email = TextEditingController();         //controller for email input
  final lastName = TextEditingController();       //controller for last name input
  final userName = TextEditingController();        //controller for username input
  final password = TextEditingController();           //controller for password input
  final firstName = TextEditingController();               //controller for first name input
  final phoneNumber = TextEditingController();         //controller for phone number input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); //form key for form validation

  ///Signup
  void signup() async{
    try{
      ///start loading
      TFullScreenLoader.openLoadingDialog('We are processing your information...', TImages.dockerAnimation);

      ///check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {
        //remove loader
        TFullScreenLoader.stopLoading();
        return;
      }


      ///form validation
      if(!signupFormKey.currentState!.validate()) {
        //remove loader
        TFullScreenLoader.stopLoading();
        return;
      }

      ///privacy policy check
      if(!privacyPolicy.value){
        TLoaders.warningSnackBar(
            title: 'Accept Privacy and Policy',
            message: 'In order to create account, you must have to read and accept Privacy and Policy & Terms of Use.',
        );
        return;
      }

      ///register user in the Firebase Authentication & save user data in the firebase
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());


      ///save authenticated user data in the Firebase Firestore
      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: userName.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: ''
      );

      final userRepository = Get.put(UserRepository());
      userRepository.saveUserRecord(newUser);

      //remove loader
      TFullScreenLoader.stopLoading();

      ///show success message
      TLoaders.successSnackBar(title: 'Congratulations!',message: 'Your account has been created! Verify your email to continue.');


      ///move to verify email screen
      Get.to(()=>VerifyEmailScreen(email: email.text.trim(),));
    }catch(e){
      //remove loader
      TFullScreenLoader.stopLoading();

      ///show some Generic Error to the user
      TLoaders.errorSnackBar(title: 'Oh snap!', message: e.toString());
    }
  }
}