import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/images/t_circular_image.dart';
import 'package:hamrodokan/common/widgets/texts/product_price_text.dart';
import 'package:hamrodokan/common/widgets/texts/product_title_text.dart';
import 'package:hamrodokan/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:hamrodokan/utils/constants/enums.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price and sale price
        Row(
          children: [
            ///sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),

            ///price
            Text('\$25',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems,),
            const TProductPriceText(price: '17',isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),

        ///title
        const TProductTitleText(title: 'Dairy Milk'),
        const SizedBox(height: TSizes.spaceBtwItems/1.5),

        ///stock status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5),


        ///brand
        Row(
          children: [
            TCircularImage(image: TImages.dairy,
            width: 32,
              height: 32,
              overlayColor: dark? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(title: 'Dairy',brandTextSize: TextSizes.medium,),
          ],
        ),
      ],
    );
  }
}
