import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/constants/text_strings.dart';
import 'package:hamrodokan/utils/validators/validation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../controllers/update_name_controller.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(

      ///custom appbar
      appBar: TAppbar(
        showBackArrow: true,
        title: Text('Change Name', style: Theme.of(context).textTheme.headlineSmall,),
      ),

      body: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [

              ///headings
              Text('Use real name for easy verification. This name will appear on several pages.',
              style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: TSizes.spaceBtwSections,),

              ///text field and button
              Form(
                key: controller.updateUserNameFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.firstName,
                      validator: (value) => TValidator.validateEmptyText('First name', value),
                      expands: false,
                      decoration: InputDecoration(labelText: 'First Name', prefixIcon: Icon(Iconsax.user)),
                    ),
                    SizedBox(height: TSizes.spaceBtwInputFields,),
                    TextFormField(
                      controller: controller.lastName,
                      validator: (value) => TValidator.validateEmptyText('Last name', value),
                      expands: false,
                      decoration: InputDecoration(labelText: 'Last Name', prefixIcon: Icon(Iconsax.user)),
                    )
                  ],
                ),
              ),

              SizedBox(height: TSizes.spaceBtwSections,),

              ///save button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: ()=>controller.updateUserName(),
                    child: Text('Save')),
              ),
            ],
          ),
      ),
    );
  }
}
