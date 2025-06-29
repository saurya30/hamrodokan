import 'package:flutter/material.dart';
import 'package:hamrodokan/utils/constants/colors.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: EdgeInsets.all(TSizes.md),
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
          ? TColors.darkerGrey
          : TColors.grey,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress? Iconsax.tick_circle5 : null,
              color: selectedAddress? dark? TColors.light : TColors.dark : null,

            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Cena',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSizes.sm/2,),
              const Text('(+977) 9812345678',maxLines: 1, overflow: TextOverflow.ellipsis,),
              const SizedBox(height: TSizes.sm/2,),
              Text('Dakshinbarahi Mandir, Naya Thimi, Bhaktapur',
             softWrap: true,
              ),
              const SizedBox(height: TSizes.sm/2,),

            ],
          )
        ],
      ),
    );
  }
}
