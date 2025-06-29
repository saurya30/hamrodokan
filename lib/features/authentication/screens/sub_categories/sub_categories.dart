import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/common/widgets/images/t_rounded_image.dart';
import 'package:hamrodokan/common/widgets/products/products_cart/product_card_horizontal.dart';
import 'package:hamrodokan/common/widgets/texts/section_heading.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppbar(title: Text('Food'),showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsetsGeometry.all(TSizes.defaultSpace),
        child:Column(
          children: [
            ///Banner
            TRoundedImage(width:double.infinity,imageUrl: TImages.promoBanner2,applyImageRadius: true),
            SizedBox(height: TSizes.spaceBtwSections),

            ///Sub-Categories
            Column(
              children: [
                ///Heading
                TSectionHeading(title:'Food',onPressed:(){}),
                const SizedBox(height: TSizes.spaceBtwItems / 2),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context,index) => const SizedBox(width: TSizes.spaceBtwItems),
                    itemBuilder:(context,index)=> const TProductCardHorizontal(),
                  ),
                ),

              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}
