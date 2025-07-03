import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/common/widgets/loaders/loaders.dart';
import 'package:hamrodokan/data/repositories/user/user_repository.dart';
import 'package:hamrodokan/features/personalization/controllers/user_controller.dart';
import 'package:hamrodokan/features/personalization/screens/profile/profile.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';
import 'package:hamrodokan/utils/helpers/network_manager.dart';
import 'package:hamrodokan/utils/popups/full_screen_loader.dart';

///Controller to manage user-related functionality
class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  ///initialize user data when Name screen appears
  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }

  ///fetch user record
  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async {
    try {
      //start loading
      TFullScreenLoader.openLoadingDialog(
        'We are updating your information...',
        TImages.dockerAnimation,
      );

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      //form validation
      if (!updateUserNameFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      //update user's first and last name in the Firebase Firestore
      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim(),
      };
      await userRepository.updateSingleField(name);

      //update the Rx user value
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      //remove loader
      TFullScreenLoader.stopLoading();

      //show success message
      TLoaders.successSnackBar(
        title: 'Congratulations',
        message: 'Your name has been updated.',
      );

      //move to previous screen
      Get.off(() => ProfileScreen());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh snap', message: e.toString());
    }
  }
}
