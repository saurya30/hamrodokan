import 'package:flutter/material.dart';
<<<<<<< HEAD
=======

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
>>>>>>> c1c01e815dc444da77d589245a1acea9f9886cb0

import 'app.dart';

<<<<<<< HEAD

// Future<void> main(dynamic DefaultFirebaseOptions) async{
//   ///widgets binding
//   final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
=======
// Future<void> main(dynamic DefaultFirebaseOptions) async {
//   ///widgets binding
//   final WidgetsBinding widgetsBinding = WidgetsFlutterBinding
//       .ensureInitialized();
>>>>>>> c1c01e815dc444da77d589245a1acea9f9886cb0
//
//   ///GetX Local Storage
//   await GetStorage.init();
//
//   ///await splash until other items load
//   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//
//   ///initialize firebase
<<<<<<< HEAD
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
//       (FirebaseApp value) => Get.put(AuthenticationRepository()),
//   );
  void main(){
=======
//   // await Firebase
//   //     .initializeApp(options: DefaultFirebaseOptions.currentPlatform)
//   //     .then(
//   //       (FirebaseApp value) => Get.put(AuthenticationRepository()),
//   // );
void main() {
>>>>>>> c1c01e815dc444da77d589245a1acea9f9886cb0
  runApp(const App());
}
