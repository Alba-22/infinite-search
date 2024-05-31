import 'package:flutter/material.dart';
import 'package:infinite_search/app/utils/constants.dart';

class FilterButton extends StatelessWidget {
  final void Function() onTap;

  const FilterButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(Layout.radiusMedium),
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Layout.radiusMedium),
          border: Border.all(
            width: 1,
            color: CColors.borderColor,
          ),
        ),
        child: const Icon(
          Icons.filter_list_rounded,
          size: 24,
          color: CColors.iconColor,
        ),
      ),
    );
  }
}
