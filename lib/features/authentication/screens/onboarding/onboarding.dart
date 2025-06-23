import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/features/authentication/controllers/onboarding_controller.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../onboarding_widgets/onboading_slides.dart';
import '../onboarding_widgets/onboarding_dot_navigation.dart';
import '../onboarding_widgets/onboarding_next_button.dart';
import '../onboarding_widgets/onboarding_page.dart';
import '../onboarding_widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollable pages
          onboarding_slide(controller: controller),

          ///Skip button
          OnBoardingSkip(),

          ///dot navigation SmoothPageIndicator
          OnBoardingDotNaviagtion(),

          ///circular button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}





