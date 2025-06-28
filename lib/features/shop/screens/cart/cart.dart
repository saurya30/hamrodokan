import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/common/widgets/texts/product_price_text.dart';

import 'package:hamrodokan/utils/constants/sizes.dart';


import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, _) =>
              SizedBox(height: TSizes.spaceBtwSections),
          itemCount: 10,
          itemBuilder: (_,index) => Column(
            children: [
              TCartItem(),
              SizedBox(height: TSizes.spaceBtwItems,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ///extra space
                      SizedBox(width: 70,),
                      ///add remove button
                      TProductQuantityWithAddRemoveButton(),
                    ],
                  ),
                  TProductPriceText(price: '256'),
                ],
              ),
            ],
          ),

        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: Text('Checkout \$256.0')),
      ),
    );
  }
}




