import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';
import 'onboarding_page.dart';

class onboarding_slide extends StatelessWidget {
  const onboarding_slide({
    super.key,
    required this.controller,
  });

  final OnBoardingController controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller.pageController,
      onPageChanged: controller.updatePageIndicator,
      children: [
        OnBoardingPage(
          image: TImages.onBoardingImage1,
          title: TTexts.onBoardingTitle1,
          subTitle: TTexts.onBoardingSubTitle1,
        ),
        OnBoardingPage(
          image: TImages.onBoardingImage2,
          title: TTexts.onBoardingTitle2,
          subTitle: TTexts.onBoardingSubTitle2,
        ),
        OnBoardingPage(
          image: TImages.onBoardingImage3,
          title: TTexts.onBoardingTitle3,
          subTitle: TTexts.onBoardingSUbTitle3,
        ),
      ],
    );
  }
}