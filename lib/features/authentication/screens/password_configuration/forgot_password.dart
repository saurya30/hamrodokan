import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:hamrodokan/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/constants/text_strings.dart';
import 'package:hamrodokan/utils/validators/validation.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Headings
            Text(
              TTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: TSizes.spaceBtwSections * 2),

            ///Text Field

              Form(
                key: controller.forgetPasswordFormKey,
                child: TextFormField(
                controller: controller.email,
                  validator: TValidator.validateEmail,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Iconsax.direct_right),
                  ),
                ),
              ),

            SizedBox(height: TSizes.spaceBtwSections),

            ///Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.sendPasswordResetEmail(),
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
