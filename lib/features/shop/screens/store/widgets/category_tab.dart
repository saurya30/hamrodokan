import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/layouts/grid_layout.dart';
import 'package:hamrodokan/common/widgets/products/products_cart/product_card_vertical.dart';
import 'package:hamrodokan/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children:[
        Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///brands
            TBrandShowcase(images: [TImages.milk,TImages.milk,TImages.milk],),
            TBrandShowcase(images: [TImages.milk,TImages.milk,TImages.milk],),
            SizedBox(height: TSizes.spaceBtwItems,),

            ///products
            TSectionHeading(title: 'You might like', onPressed: (){},),
            SizedBox(height: TSizes.spaceBtwItems,),

            TGridLayout(itemCount: 4, itemBuilder: (_,index) => TProductCardVertical(),),
            SizedBox(height: TSizes.spaceBtwSections,)
          ],
        ),
      ),
    ],
    );
  }
}
