import 'package:flutter/material.dart';

import 'brand_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      padding: EdgeInsets.all(TSizes.md),
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          ///brand with products count
          TBrandCard(showBorder: false),
          SizedBox(height: TSizes.spaceBtwItems,),

          ///brand top 3 product images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkerGrey
          : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: EdgeInsets.all(TSizes.md),
      child: Image(image: AssetImage(image), fit: BoxFit.contain),
    ),
  );
}