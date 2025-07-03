import 'package:flutter/material.dart';

import 'package:hamrodokan/common/styles/spacing_styles.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onPressed,
     this.lottieAsset,
  });

  final String image, title, subtitle;
  final VoidCallback onPressed;
  final String? lottieAsset;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = THelperFunctions.screenWidth();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: screenHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: TSpacingStyle.paddingWithAppBarHeight * 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// Image
                    Image.asset(
                      image,
                      width: screenWidth * 0.6,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Title
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Subtitle
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: TSizes.spaceBtwSections),

                    /// Continue Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: onPressed,
                        child: Text("Continue"),
                      ),
                    ),

                    /// Optional Lottie Animation
                    if (lottieAsset != null && lottieAsset!.trim().isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Lottie.asset(
                          lottieAsset!,
                          height: 200,
                          repeat: false,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  }
