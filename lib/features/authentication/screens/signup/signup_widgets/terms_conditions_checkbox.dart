import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:hamrodokan/features/authentication/controllers/signup/signup_controller.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 19,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) => controller.privacyPolicy.value =
                  !controller.privacyPolicy.value,
            ),
          ),
        ),
        SizedBox(width: 4.0),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodySmall,
            children: [
              TextSpan(
                text: "I agree to ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: "Privacy and Policy ",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: dark ? TColors.white : TColors.primary,
                  decorationColor: dark ? TColors.white : TColors.primary,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Navigate or handle tap
                    Navigator.pushNamed(context, '/privacy-policy');
                  },
              ),
              TextSpan(
                text: "and ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: "Terms of Use",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: dark ? TColors.white : TColors.primary,
                  decorationColor: dark ? TColors.white : TColors.primary,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Navigate or handle tap
                    Navigator.pushNamed(context, '/terms-and-conditions');
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
