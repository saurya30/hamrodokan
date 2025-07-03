import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/data/repositories/authentication/authentication_repository.dart';
import 'package:hamrodokan/features/authentication/controllers/signup/verify_email_controller.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key,this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => AuthenticationRepository.instance.logout(),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                /// Image
                Image.asset(
                  TImages.emailVerificaton,
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 200,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: TSizes.spaceBtwItems),

                /// Title and subtitle
                Text(
                  TTexts.verifyEmailTitle,
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwItems),
                Text(
                  email ??'',
                  style: Theme
                      .of(context)
                      .textTheme
                      .labelLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwItems),
                Text(
                  TTexts.verifyEmailSubTitle,
                  style: Theme
                      .of(context)
                      .textTheme
                      .labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwSections),

                /// Continue Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => controller.checkEmailVerificationStatus(),
                    child: Text("Continue"),
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwItems),

                /// Resend Email Button
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: ()=>controller.sendEmailVerification(),
                    child: Text("Resend Email"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  }