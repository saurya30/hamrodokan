import 'package:flutter/material.dart';
import 'package:hamrodokan/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:hamrodokan/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text)!=null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        avatar: isColor ? TCircularContainer(
                margin: EdgeInsets.zero,
                width: 50,
                height: 50,
                backgroundColor: THelperFunctions.getColor(text)!,
              )
            : null,
        shape: isColor? CircleBorder() : null,
        backgroundColor: isColor ? THelperFunctions.getColor(text)! : null,
        labelPadding: isColor? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
      ),
    );
  }
}
