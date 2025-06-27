import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    this.maxLines=1,
    this.color,
    required this.title,
    this.textAlign = TextAlign.center,
    this.brandTextSize= TextSizes.small,
  });

  final int maxLines;
  final Color? color;
  final String title;
  final TextAlign? textAlign;
  final TextSizes? brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      //check which brandSize is required and set that style
      style: brandTextSize==TextSizes.small? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          :brandTextSize == TextSizes.medium ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
          : brandTextSize==TextSizes.large ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
          :Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
