import 'package:flutter/material.dart';
import 'package:hamrodokan/app.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/constants/text_strings.dart';
import 'package:hamrodokan/utils/device/device_utility.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';
import 'package:hamrodokan/utils/theme/custom_themes/text_field_theme.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../common/widgets/products_cart/cart_menu_icon.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
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
          ],
        ),
      ),
    );
  }
}





