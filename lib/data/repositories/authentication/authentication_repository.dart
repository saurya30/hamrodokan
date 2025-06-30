import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hamrodokan/features/authentication/screens/login/login.dart';
import 'package:hamrodokan/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  ///variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  ///called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  ///function to show relevant screen
  Future<void> screenRedirect() async {
    //Local Storage
    if(kDebugMode){
      print('========Get Storage========');
      print(deviceStorage.read('IsFirstTime'));
    }
    deviceStorage.writeIfNull('IsFirstTime', true);
    ///check if its first time launching the app
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => LoginScreen())
        : Get.offAll(() => OnboardingScreen());
  }


  ///========================EMAIL AND PASSWORD SIGN IN=====================
  /// [EmailAuthentication]-Signin

  /// [EmailAuthentication]-Register
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async{
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      throw TFirebaseAuthException(e.code).message;
  } on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
  } on FormatException catch(_){
      throw const TFormatException();
    }on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    }catch(e){
      throw 'Something went wrong.Please try again';
    }
}

