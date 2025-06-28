import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:hamrodokan/common/widgets/texts/product_price_text.dart';
import 'package:hamrodokan/common/widgets/texts/product_title_text.dart';
import 'package:hamrodokan/common/widgets/texts/section_heading.dart';
import 'package:hamrodokan/utils/constants/colors.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// selected attribute pricing and description
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                ///title, price and stock status
                Row(
                  children: [
                    TSectionHeading(
                      title: 'Variation',
                      showActionButton: false,
                    ),
                    SizedBox(width: TSizes.spaceBtwItems),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            TProductTitleText(title: 'Price', smallSize: true),
                            SizedBox(width: TSizes.spaceBtwItems),

                            ///actual price
                            Text(
                              '\$25',
                              style: Theme.of(context).textTheme.titleSmall!
                                  .apply(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                            ),
                            SizedBox(width: TSizes.spaceBtwItems),

                            ///sale price
                            TProductPriceText(price: '\$20'),
                          ],
                        ),

                        ///stock
                        Row(
                          children: [
                            TProductTitleText(title: 'Stock', smallSize: true),
                            Text(
                              'In Stock',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                ///variation description
                TProductTitleText(
                  title: 'This is description of product upto 4 lines max',
                  smallSize: true,
                  maxLines: 4,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems,),

        ///attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             TSectionHeading(title: 'Colors',showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems/2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: true,onSelected: (value){},),
                TChoiceChip(text: 'Red', selected: false,onSelected: (value){}),
                TChoiceChip(text: 'Blue', selected: false,onSelected: (value){}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Size',showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems/2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: true,onSelected: (value){}),
                TChoiceChip(text: 'EU 36', selected: false,onSelected: (value){}),
                TChoiceChip(text: 'EU 38', selected: false,onSelected: (value){}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}


