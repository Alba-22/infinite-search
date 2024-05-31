import 'dart:math';

import 'package:flutter/material.dart';
import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/utils/constants.dart';

class TagWidget extends StatelessWidget {
  final Tag tag;
  final bool isSelected;
  final void Function()? onTap;

  const TagWidget({
    super.key,
    required this.tag,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(Layout.radiusSmall),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Layout.gapExtraSmall,
          horizontal: Layout.gapMedium,
        ),
        decoration: BoxDecoration(
          color: isSelected ? tag.backgroundColor : Colors.transparent,
          border: Border.all(
            color: isSelected ? tag.backgroundColor : CColors.borderColor,
          ),
          borderRadius: BorderRadius.circular(Layout.radiusSmall),
        ),
        child: Text(
          tag.name,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isSelected ? getTextColor(tag.backgroundColor) : CColors.textColor,
          ),
        ),
      ),
    );
  }

  Color getTextColor(Color backgroundColor) {
    return calculateLuminance(backgroundColor) > 0.5 ? Colors.black : Colors.white;
  }

  double calculateLuminance(Color color) {
    double sR = color.red / 255.0;
    double sG = color.green / 255.0;
    double sB = color.blue / 255.0;

    var r = (sR <= 0.03928) ? sR / 12.92 : pow(((sR + 0.055) / 1.055), 2.4);
    var g = (sG <= 0.03928) ? sG / 12.92 : pow(((sG + 0.055) / 1.055), 2.4);
    var b = (sB <= 0.03928) ? sB / 12.92 : pow(((sB + 0.055) / 1.055), 2.4);

    return 0.2126 * r + 0.7152 * g + 0.0722 * b;
  }
}
