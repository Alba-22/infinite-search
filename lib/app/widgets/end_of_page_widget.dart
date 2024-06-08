import 'package:flutter/material.dart';
import 'package:infinite_search/app/utils/constants.dart';

class EndOfPageWidget extends StatelessWidget {
  const EndOfPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.sd_card_alert,
          size: 32,
          color: CColors.textColor,
        ),
        SizedBox(height: Layout.gapBig),
        Text(
          "End of results :/",
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
