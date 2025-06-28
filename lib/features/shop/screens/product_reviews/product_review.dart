import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:hamrodokan/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';


import '../../../../common/widgets/products/ratings/rating_indicator.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///appbar
      appBar: TAppbar(title: Text('Reviews and Ratings'),
      showBackArrow: true,
      ),

      ///body
      body:SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ///overall product ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5,),
              Text("12,611",style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///user reviews list
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),

            ],
          ),
        ),
      ),
    );
  }
}

