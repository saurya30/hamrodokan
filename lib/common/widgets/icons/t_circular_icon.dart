import 'package:flutter/material.dart';
import 'package:hamrodokan/utils/constants/colors.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';

import '../../../utils/constants/sizes.dart';

class TCircularIcon extends StatelessWidget {
  ///custom circular icon with a background color
  ///properties are:
  ///Container [width], [height] & [backgroundColor].
  ///Icon [size], [color] & [onPressed].
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : THelperFunctions.isDarkMode(context)
            ? TColors.black.withOpacity(0.9)
            : TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color,size: size,)),
    );
  }
}
