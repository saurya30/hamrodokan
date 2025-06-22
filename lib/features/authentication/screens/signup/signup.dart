import 'package:flutter/material.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/widgets_login_signup/divider.dart';
import '../../../../common/widgets/widgets_login_signup/social_buttons.dart';
import '../signup_widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text("Let's create your account", style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: TSizes.spaceBtwSections),

              ///Form, signup button and terms of use
              SignupForm(dark: dark),
              SizedBox(height: TSizes.spaceBtwSections,),

              ///divider
              FormDivider(dark: dark, text: "or sign up with"),
              SizedBox(height: TSizes.spaceBtwSections,),

              ///social buttons
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


