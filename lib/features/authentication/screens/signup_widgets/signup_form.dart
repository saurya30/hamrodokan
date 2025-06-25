import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/features/authentication/controllers/signup_controller.dart';
import 'package:hamrodokan/features/authentication/screens/signup/verify_email.dart';
import 'package:hamrodokan/utils/validators/validation.dart';
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
    final controller = Get.put(SignupController());
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) => TValidator.validateEmptyText('First Name', value),
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
                  controller: controller.lastName,
                  validator: (value) => TValidator.validateEmptyText('Last Name', value),
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
            controller: controller.userName,
            validator: (value) => TValidator.validateEmptyText(' Username', value),
            decoration: InputDecoration(
              labelText: "Username",
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          ///email
          TextFormField(
            expands: false,
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            decoration: InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          ///phone number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            expands: false,
            decoration: InputDecoration(
              labelText: "Phone number",
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          ///password
          TextFormField(
            controller: controller.password,
            validator: (value) => TValidator.validatePassword(value),
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
              onPressed: ()=> controller.signup(),
              child: Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }
}