import 'package:flutter/material.dart';

import 'app.dart';


// Future<void> main(dynamic DefaultFirebaseOptions) async{
//   ///widgets binding
//   final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//
//   ///GetX Local Storage
//   await GetStorage.init();
//
//   ///await splash until other items load
//   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//
//   ///initialize firebase
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
//       (FirebaseApp value) => Get.put(AuthenticationRepository()),
//   );
  void main(){
  runApp(const App());
}
