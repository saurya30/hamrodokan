import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:hamrodokan/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:hamrodokan/common/widgets/texts/section_heading.dart';

import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import 'package:get/get.dart';

import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            ///header
            TPrimaryHeaderContainer(
              child: Column(
                children: [

                  ///appbar
                  TAppbar(
                    title: Text(
                      'Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: TColors.white),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///user profile card
                  TUserProfileTile(onPressed: ()=> Get.to(()=> ProfileScreen())),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            ///body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///account settings
                  TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In progress and completed orders',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all discounted coupons',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification messages',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),

                  ///app settings
                  SizedBox(height: TSizes.spaceBtwSections,),
                  TSectionHeading(title: 'App Settings',showActionButton: false,),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload data to your cloud firebase'),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value){}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),

                  ///logout button
                  SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: Text('Logout')),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
