import 'package:flutter/material.dart';
import 'package:infinite_search/app/utils/constants.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    this.onChanged,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      cursorColor: CColors.iconColor,
      style: const TextStyle(
        fontSize: 16,
        color: CColors.textColor,
      ),
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          size: 24,
          color: CColors.iconColor,
        ),
        border: _border,
        enabledBorder: _border,
        focusedBorder: _border,
        hintText: "Search by the post's title",
        hintStyle: const TextStyle(
          fontSize: 14,
          color: CColors.iconColor,
        ),
      ),
    );
  }

  OutlineInputBorder get _border {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: CColors.borderColor,
      ),
      borderRadius: BorderRadius.circular(Layout.radiusMedium),
    );
  }
}
