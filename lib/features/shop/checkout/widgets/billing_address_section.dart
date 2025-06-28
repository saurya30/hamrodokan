import 'package:flutter/material.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';

import '../../../../common/widgets/texts/section_heading.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address',buttonTitle: 'Change',onPressed: (){}),
       Text('hamro dokan',style: Theme.of(context).textTheme.bodyLarge),
        const  SizedBox(height: TSizes.spaceBtwItems/2),

        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey,size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('9876543210',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const  SizedBox(height: TSizes.spaceBtwItems/2),

        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey,size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(child: Text('Cosmos college,Satdobato',style: Theme.of(context).textTheme.bodyMedium,softWrap:true)),
          ],
        ),
        const  SizedBox(height: TSizes.spaceBtwItems/2),
      ],
    );
  }
}
