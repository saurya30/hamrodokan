import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/features/shop/screens/cart/widgets/cart_items.dart';

import 'package:hamrodokan/utils/constants/sizes.dart';

import '../checkout/widgets/checkout.dart';




class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body:const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItems(),
      ),
      ///Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(()=> const  CheckoutScreen()), child: Text('Checkout \$256.0')),
      ),
    );
  }
}






