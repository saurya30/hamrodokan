import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/common/widgets/images/t_circular_image.dart';
import 'package:hamrodokan/common/widgets/texts/section_heading.dart';
import 'package:hamrodokan/features/personalization/screens/profile/widgets/change_name.dart';
import 'package:hamrodokan/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../controllers/user_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: TAppbar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      ///body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              
              ///Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(image: TImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: Text('Change Profile Picture')),
                  ],
                ),
              ),

              ///details
              SizedBox(height: TSizes.spaceBtwItems/2,),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems,),

              ///heading profile info
              TSectionHeading(title: 'Profile Information',showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title: 'Name',value: controller.user.value.fullName,onPressed: ()=>Get.to(()=>ChangeName())),
              TProfileMenu(title: 'Username',value: controller.user.value.username,onPressed: (){},),

              SizedBox(height: TSizes.spaceBtwItems,),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems,),

              ///heading personal info
              TSectionHeading(title: 'Personal Information',showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title: 'User Id',value: controller.user.value.id,icon: Iconsax.copy,onPressed: (){},),
              TProfileMenu(title: 'Email',value: controller.user.value.email,onPressed: (){},),
              TProfileMenu(title: 'Phone Number',value: controller.user.value.phoneNumber,onPressed: (){},),
              TProfileMenu(title: 'Gender',value: 'Male',onPressed: (){},),
              TProfileMenu(title: 'Date of Birth',value: '20 December, 2020',onPressed: (){},),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(
                    onPressed: ()=>controller.deleteAccountWarningPopup(),
                    child: Text('Delete Account',style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


