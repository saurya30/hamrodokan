import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamrodokan/common/widgets/appbar/appbar.dart';
import 'package:hamrodokan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:hamrodokan/common/widgets/widgets_success_screen/success_screen.dart';
import 'package:hamrodokan/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:hamrodokan/navigation_menu.dart';
import 'package:hamrodokan/utils/constants/colors.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../../utils/constants/sizes.dart';
import 'billing_address_section.dart';
import 'billing_amount_section.dart';
import 'billing_payment_section.dart';


class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///--Items in Cart
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///--Coupon TextField
              TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///--Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    ///Pricing
                    TBillingAmountSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    ///Divider
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    ///Payment Method
                    TBillingPaymentSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    ///Address
                    TBillingAddressSection(),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      ///Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() =>  SuccessScreen(
            image: 'null',
            lottieAsset: 'assets/animations/successfulpayment.json',
              title: 'Payment Success!',
              subtitle: 'Your item will be shipped soon',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
          ),
          ),

          child: Text('Checkout \$256.0')),
        ),
      );
  }
}
