import 'package:flutter/material.dart';
import 'package:infinite_search/app/utils/constants.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final void Function() onTap;
  final double? height;
  final double? width;

  const CustomButton({
    super.key,
    required this.label,
    required this.onTap,
    this.height = 48,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: CColors.textColor,
          borderRadius: BorderRadius.circular(Layout.radiusMedium),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
