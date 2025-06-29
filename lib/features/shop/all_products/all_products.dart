import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/common/widgets/layouts/grid_layout.dart';
import 'package:hamrodokan/common/widgets/products/products_cart/product_card_vertical.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/products/sortable/sortable_products.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: const TAppbar(
          title: Text('Popular Product'), showBackArrow: true),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: TSortableProduct(),

    ),

    ),
    );
  }
}


