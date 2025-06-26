import 'package:flutter/material.dart';
import 'package:hamrodokan/features/authentication/screens/home/widget/promo_slider.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';

import 'package:hamrodokan/utils/constants/sizes.dart';

import '../../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../../common/widgets/custom_shapes/containers/search_container.dart';

import '../../../../../common/widgets/texts/section_heading.dart';
import 'home_appbar.dart';
import 'home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///body
            Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [

                  ///promo slider
                  TPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3]),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
