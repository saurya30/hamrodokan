import 'package:flutter/material.dart';
import 'package:hamrodokan/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:hamrodokan/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:hamrodokan/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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


                  ///checkout button


                  ///description


                  ///reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

