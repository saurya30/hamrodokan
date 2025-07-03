import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/features/personalization/controllers/user_controller.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/validators/validation.dart';
import 'package:iconsax/iconsax.dart';

class ReAuthLoginForm extends StatelessWidget {
  const ReAuthLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: AppBar(title: Text('Re-Authentication User'),),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            key: controller.reAuthFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///email
                  TextFormField(
                    controller: controller.verifyEmail,
                    validator: TValidator.validateEmail,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwInputFields,),

                  ///password
                  Obx(
                    ()=> TextFormField(
                      obscureText: controller.hidePassword.value,
                      controller: controller.verifyPassword,
                      validator: TValidator.validatePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        suffixIcon: IconButton(
                            onPressed: ()=>controller.hidePassword.value = !controller.hidePassword.value,
                            icon: controller.hidePassword.value? Icon(Iconsax.eye_slash): Icon(Iconsax.eye)),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  ///login button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: ()=> controller.reAuthenticateEmailAndPasswordUser(),
                        child: Text('Verify')),
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }
}
