import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:hamrodokan/common/widgets/products/ratings/rating_indicator.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/colors.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
               const CircleAvatar(backgroundImage: AssetImage(TImages.user),),
               const SizedBox(width: TSizes.spaceBtwItems,),
               Text('John Cena',style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        ///reviews
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('01 Nov, 2025', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        ReadMoreText(
          'The user interface of this app is intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'See less',
          trimCollapsedText: 'Show more',
          moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        ///company review
        TRoundedContainer(
          backgroundColor: dark? TColors.darkerGrey: TColors.grey,
          child: Padding(padding: EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hamro Dokan",style: Theme.of(context).textTheme.titleMedium,),
                  Text("02 Nov 2025", style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              ReadMoreText(
                'The user interface of this app is intuitive. I was able to navigate and make purchases seamlessly. Great job!',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: 'See less',
                trimCollapsedText: 'Show more',
                moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
              ),
            ],
          ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
      ],
    );
  }
}
