import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';

import '../../../../common/widgets/products/sortable/sortable_products.dart';


class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppbar(
          title: Text('Popular Product'), showBackArrow: true),
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TSortableProduct(),

    ),

    ),
    );
  }
}


