import 'package:flutter/material.dart';
import 'package:infinite_search/app/utils/constants.dart';

class CustomTabBar extends StatelessWidget {
  final TabController controller;
  final void Function(int) onTap;

  const CustomTabBar({
    super.key,
    required this.onTap,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      onTap: onTap,
      tabAlignment: TabAlignment.fill,
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: CColors.textColor,
      unselectedLabelColor: CColors.iconColor,
      indicatorColor: CColors.textColor,
      dividerColor: CColors.borderColor,
      overlayColor: WidgetStateProperty.all(
        CColors.iconColor.withOpacity(0.2),
      ),
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 16,
      ),
      tabs: const [
        Tab(text: "Relevants"),
        Tab(text: "Recents"),
      ],
    );
  }
}
