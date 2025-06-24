import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/features/authentication/screens/onboarding/onboarding.dart';
import 'package:hamrodokan/utils/constants/colors.dart';
import 'package:hamrodokan/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,

      ///show loader or circular progress indicator meanwhile authentication repository is deciding to show relevant screen.
      home: Scaffold(
        backgroundColor: TColors.primary,
        body: Center(child: CircularProgressIndicator(color: Colors.white)),
      ),
    );
  }
}
