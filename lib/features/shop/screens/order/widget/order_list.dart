import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:hamrodokan/utils/constants/colors.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_,_)=>SizedBox(height: TSizes.spaceBtwItems,),
      itemCount: 5,
      itemBuilder :(_,index)=> TRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///row 1
            Row(
              children: [
                ///1-Icon
                Icon(Iconsax.ship),
                SizedBox(width: TSizes.spaceBtwItems / 2),

                ///2-status and date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: TColors.primary,
                          fontSizeDelta: 1,
                        ),
                      ),
                      Text(
                        '07 NOV 2025',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),

                ///3-Icon
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.arrow_right_34, size: TSizes.iconSm),
                ),
              ],
            ),
            SizedBox(height: TSizes.spaceBtwItems,),

            ///row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ///1-Icon
                      Icon(Iconsax.tag),
                      SizedBox(width: TSizes.spaceBtwItems / 2),

                      ///2-status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                              ),
                            Text(
                              '#123ab',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      ///1-Icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: TSizes.spaceBtwItems / 2),

                      ///2-status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '10 DEC 2025',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
