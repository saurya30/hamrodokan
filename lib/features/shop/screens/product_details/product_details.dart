import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/texts/section_heading.dart';
import 'package:hamrodokan/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:hamrodokan/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:hamrodokan/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:hamrodokan/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:hamrodokan/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            TProductImageSlider(),

            /// Product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  ///rating and share
                  TRatingAndShare(),

                  ///price,title,stock and brand
                  TProductMetaData(),

                  ///attributes
                  TProductAttributes(),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  ///checkout button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),

                  ///description
                  TSectionHeading(title: 'Description',showActionButton: false,),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  ReadMoreText('This is a product description for dairy milk silk. There are more things that can be added but this much is enough.',
                  trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: ' See Less',
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  ),


                  ///reviews
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    children: [
                      TSectionHeading(title: 'Reviews(100)',showActionButton: false,onPressed: (){},),
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3)),
                    ],
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

