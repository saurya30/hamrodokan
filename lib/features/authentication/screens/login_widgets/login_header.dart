import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: ClipOval(
            child: Image.asset(
              dark ? TImages.lightAppLogo : TImages.darkAppLogo,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),

        Text(
          TTexts.loginTitle??'',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: TSizes.sm),
        Text(
          TTexts.loginSubTitle??'',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}