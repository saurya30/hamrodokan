import 'package:flutter/material.dart';
import 'package:hamrodokan/utils/constants/colors.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:lottie/lottie.dart';

///widget for displaying animated loading indicator and optional text and action button

class TAnimationLoaderWidget extends StatelessWidget {
  ///parameters
  ///text  : text to be displayed below the animation
  ///animation: path to the lottie animation file
  ///showAction: whether to show an action button below the text
  ///actionText: text to be displayed on the action button
  ///onActionPressed: Callback function to be executed when the action button is pressed
  const TAnimationLoaderWidget({
    super.key,
    required this.animation,
    required this.text,
     this.showAction = false,
    this.actionText,
    this.onActionPressed
  });

  final String animation;
  final String text;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset(animation, width: MediaQuery.of(context).size.width * 0.8),
          SizedBox(height: TSizes.defaultSpace,),
          Text(text,
          style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: TSizes.defaultSpace,),
          showAction
          ? SizedBox(
            width: 250,
            child: OutlinedButton(
                onPressed: onActionPressed,
                style: OutlinedButton.styleFrom(backgroundColor: TColors.dark),
                child: Text(actionText!,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.light),
                ),
            ),
          )
              : SizedBox(),
        ],
      ),
    );
  }
}
