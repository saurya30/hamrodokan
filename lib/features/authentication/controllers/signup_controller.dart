import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  ///variables
  final email = TextEditingController();         //controller for email input
  final lastName = TextEditingController();       //controller for last name input
  final userName = TextEditingController();        //controller for username input
  final password = TextEditingController();           //controller for password input
  final firstName = TextEditingController();               //controller for first name input
  final phoneNumber = TextEditingController();         //controller for phone number input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); //form key for form validation

  ///Signup
  Future<void> signup() async{
    try{
      ///start loading


      ///check internet connectivity



      ///form validation



      ///privacy policy check



      ///register user in the Firebase Authentication & save user data in the firebase



      ///save authenticated user data in the Firebase Firestore


      ///show success message



      ///move to verify email screen
    }catch(e){
      ///show some Generic Error to the user
    }finally{

    }
  }
}