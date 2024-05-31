import 'package:flutter/material.dart';
import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/utils/constants.dart';
import 'package:infinite_search/app/widgets/custom_button.dart';
import 'package:infinite_search/app/widgets/tag_widget.dart';

Future<T?> showFilterTagsBottomSheet<T>(
  BuildContext context, {
  required List<Tag> initiallySelected,
  required void Function(List<Tag> tags) onSelectTags,
}) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Layout.radiusMedium),
    ),
    builder: (context) {
      return FilterTagsBottomSheet(
        initiallySelected: initiallySelected,
        onSelectTags: onSelectTags,
      );
    },
  );
}

class FilterTagsBottomSheet extends StatefulWidget {
  final List<Tag> initiallySelected;
  final void Function(List<Tag> tags) onSelectTags;

  const FilterTagsBottomSheet({
    super.key,
    required this.initiallySelected,
    required this.onSelectTags,
  });

  @override
  State<FilterTagsBottomSheet> createState() => _FilterTagsBottomSheetState();
}

class _FilterTagsBottomSheetState extends State<FilterTagsBottomSheet> {
  List<Tag> selectedTags = [];

  @override
  void initState() {
    super.initState();
    selectedTags = widget.initiallySelected;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: Layout.gapBig,
        vertical: Layout.gapLarge,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Selecione por quais categorias deseja filtrar",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: CColors.textColor,
            ),
          ),
          const SizedBox(height: Layout.gapBig),
          Wrap(
            children: Tag.values.map(
              (tag) {
                final index = Tag.values.indexOf(tag);
                return Container(
                  padding: EdgeInsets.only(left: index == 0 ? 0 : Layout.gapExtraSmall),
                  child: TagWidget(
                    tag: tag,
                    isSelected: selectedTags.contains(tag),
                    onTap: () {
                      setState(() {
                        if (selectedTags.contains(tag)) {
                          selectedTags.remove(tag);
                        } else {
                          selectedTags.add(tag);
                        }
                      });
                    },
                  ),
                );
              },
            ).toList(),
          ),
          const SizedBox(height: Layout.gapBig),
          CustomButton(
            label: "Filtrar",
            onTap: () {
              widget.onSelectTags(selectedTags);
            },
          ),
        ],
      ),
    );
  }
}
