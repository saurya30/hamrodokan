import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/features/authentication/screens/login/login.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/constants/text_strings.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(()=>LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [

                ///Image
                Image(
                  image: AssetImage(TImages.resetPassword),
                  width: THelperFunctions.screenWidth() * 0.6,
                ),
                SizedBox(height: TSizes.spaceBtwItems),

                ///Title and subtitle
                Text(TTexts.resetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: TSizes.spaceBtwItems),

                Text(TTexts.resetPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwSections),

                ///buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: ()=>Get.to(()=>LoginScreen()),
                    child: Text("Done"),
                  ),
                ),

                SizedBox(height: TSizes.spaceBtwItems),

                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Reset email sent again. Please check your inbox."))
                      );
                    },
                    child: Text("Resend Email"),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
