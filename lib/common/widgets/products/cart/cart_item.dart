import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        ///image
        TRoundedImage(
          imageUrl: TImages.dairy,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),

        ///title, price and size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandTitleWithVerifiedIcon(title: 'DairyMilk'),
              Flexible(child: TProductTitleText(title: 'Dairy Milk silk',maxLines: 1,)),

              ///attributes
              Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'Green',style: Theme.of(context).textTheme.bodyLarge),
                      TextSpan(text: 'Size',style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'Uk 08',style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  )
              ),
            ],
          ),
        )
      ],
    );
  }
}