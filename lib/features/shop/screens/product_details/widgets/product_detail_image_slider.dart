import 'package:flutter/material.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            ///Main large image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(
                  TSizes.productImageRadius*2,
                ),
                child: Center(
                  child: Image(image: AssetImage(TImages.milk)),
                ),
              ),
            ),

            ///image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_,__) => SizedBox(width: TSizes.spaceBtwItems,),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_,index) =>  TRoundedImage(
                    imageUrl: TImages.dairymilkSilk,
                    width: 80,
                    backgroundColor: dark? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: EdgeInsets.all(TSizes.sm),
                  ),
                ),
              ),
            ),

            ///appbar icon
            TAppbar(
              showBackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart5,color: Colors.red,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}