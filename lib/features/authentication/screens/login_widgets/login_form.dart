import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: "Email or phone number",
              ),
            ),

            SizedBox(height: TSizes.spaceBtwInputFields),

            ///Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            SizedBox(height: TSizes.spaceBtwInputFields / 2),

            ///Remember me and forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text("Remember me"),
                  ],
                ),

                ///forgot Password
                TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password?"),
                ),
              ],
            ),

            SizedBox(height: TSizes.spaceBtwSections),

            ///Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Sign in'),
              ),
            ),

            SizedBox(height: TSizes.spaceBtwItems),

            ///Create Account
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      color: dark ? Colors.black : Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign up!",
                        style: TextStyle(color: TColors.primary),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
