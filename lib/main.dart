import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hamrodokan/app.dart';
import 'package:hamrodokan/data/repositories/authentication/authentication_repository.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

Future<void> main() async {
  ///add widgets binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  ///Getx local storage
  await GetStorage.init();

  ///await native splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  ///initialize firebase and authentication repository
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  ///load all the material design
  runApp(const App());
}
