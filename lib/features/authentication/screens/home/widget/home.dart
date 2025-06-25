import 'package:flutter/material.dart';
import 'package:hamrodokan/features/authentication/screens/home/widget/promo_slider.dart';
import 'package:hamrodokan/utils/constants/image_strings.dart';
import 'package:hamrodokan/utils/constants/sizes.dart';

import '../../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(child: Container()),

            ///body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3,],),
            ),
          ],
        ),
      ),
    );
  }
}




