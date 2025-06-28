import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/features/shop/screens/order/widget/order_list.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///appbar
      appBar: TAppbar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        ///orders
        child: TOrderListItems(),
      ),
    );
  }
}
