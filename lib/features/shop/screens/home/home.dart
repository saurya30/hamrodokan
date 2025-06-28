import 'package:flutter/material.dart';
import 'package:hamrodokan/features/authentication/screens/home/widget/home_appbar.dart';
import 'package:hamrodokan/features/authentication/screens/home/widget/promo_slider.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';

import 'package:hamrodokan/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';

import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/products_cart/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';

import '../../../authentication/screens/home/widget/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  ///AppBar
                  const THomeAppBar(),
                 const SizedBox(height: TSizes.spaceBtwSections),

                  ///SearchBox
                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Categories
                  Padding(
                    padding: EdgeInsetsGeometry.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///Heading
                        const TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        ///Categories
                       const THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),
                ],
              ),
            ),

            ///body
            Padding(
              padding:const EdgeInsets.all(TSizes.defaultSpace),

              ///promo slider
              child: Column(
                children: [
                 const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                 const SizedBox(height: TSizes.spaceBtwSections),

                  ///heading
                  TSectionHeading(title: 'Popular Products',onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  ///popular products
                  TGridLayout(itemCount: 2, itemBuilder: (_ , index )=> TProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

