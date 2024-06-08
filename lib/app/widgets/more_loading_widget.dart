import 'package:flutter/material.dart';
import 'package:infinite_search/app/utils/constants.dart';

class MoreLoadingWidget extends StatelessWidget {
  const MoreLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularProgressIndicator(
          color: CColors.textColor,
          backgroundColor: CColors.borderColor,
        ),
        SizedBox(width: Layout.gapBig),
        Text(
          "Searching new posts...",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: CColors.textColor,
          ),
        ),
      ],
    );
  }
}
