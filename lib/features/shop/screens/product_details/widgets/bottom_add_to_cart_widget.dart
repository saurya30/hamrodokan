import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/icons/t_circular_icon.dart';
import 'package:hamrodokan/utils/constants/colors.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: TSizes.defaultSpace,
        vertical: TSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? TColors.darkerGrey : TColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(
                icon: Iconsax.minus,
                width: 40,
                height: 40,
                backgroundColor: TColors.darkGrey,
                color: TColors.white,
              ),
              SizedBox(width: TSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              SizedBox(width: TSizes.spaceBtwItems),

              TCircularIcon(
                icon: Iconsax.add,
                width: 40,
                height: 40,
                backgroundColor: TColors.black,
                color: TColors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(TSizes.md),
                backgroundColor: TColors.black,
                side: BorderSide(color: TColors.black),
              ),
              child: Text('Add to Cart')),
        ],
      ),
    );
  }
}
