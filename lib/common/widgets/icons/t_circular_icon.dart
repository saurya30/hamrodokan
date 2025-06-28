import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TCircularIcon extends StatelessWidget {
  ///custom circular icon with a background color
  ///properties are:
  ///Container [width], [height] & [backgroundColor].
  ///Icon [size], [color] & [onPressed].
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width,height,size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(Iconsax.heart5),
      ),
    );
  }
}