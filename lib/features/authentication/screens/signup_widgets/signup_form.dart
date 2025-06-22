import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hamrodokan/features/authentication/screens/signup/verify_email.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: "First Name",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          ///username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: "Username",
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          ///email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          ///phone number
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: "Phone number",
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          ///password
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwSections),

          ///Terms and conditions
          Row(
            children: [
              SizedBox(
                width: 19,
                height: 24,
                child: Checkbox(
                    value: true,
                    onChanged: (value) {}
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
                    TextSpan(text: "and ",
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
          ),
          SizedBox(height: TSizes.spaceBtwSections,),

          ///sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: ()=> Get.to(() => VerifyEmailScreen()),
              child: Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }
}