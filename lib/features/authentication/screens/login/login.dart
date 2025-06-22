import 'package:flutter/material.dart';
import 'package:hamrodokan/common/styles/spacing_styles.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/widgets_login_signup/divider.dart';
import '../../../../common/widgets/widgets_login_signup/social_buttons.dart';
import '../login_widgets/login_form.dart';
import '../login_widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo, title and subtitle
              LoginHeader(dark: dark),

              ///Form
              LoginForm(dark: dark),

              ///Divider
              FormDivider(dark: dark,text: "or sign in with"),

              SizedBox(height: TSizes.spaceBtwSections,),

              ///Footer
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}







