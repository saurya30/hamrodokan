import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/common/widgets/brands/brand_card.dart';
import 'package:hamrodokan/common/widgets/brands/brand_products.dart';
import 'package:hamrodokan/common/widgets/layouts/grid_layout.dart';
import 'package:hamrodokan/common/widgets/products/sortable/sortable_products.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';

import '../common/widgets/texts/section_heading.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Heading
            TSectionHeading(title: 'Brands'),
            SizedBox(height: TSizes.spaceBtwItems),

            ///--Brands
            TGridLayout(
              itemCount: 10,
              mainAxisExtent: 80,
              itemBuilder: (context, index) =>
                  TBrandCard(showBorder: true,
                      onTap: ()=> Get.to(()=>const BrandProducts()),),
            ),
          ],
        ),
      ),
    );
  }
}
