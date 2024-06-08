import 'package:flutter/material.dart';
import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/utils/constants.dart';
import 'package:infinite_search/app/widgets/tag_widget.dart';
import 'package:intl/intl.dart';

class PostCard extends StatelessWidget {
  final PostModel post;

  const PostCard({
    super.key,
    required this.post,
  });

  static const double imageHeight = 128;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      borderRadius: BorderRadius.circular(Layout.radiusMedium),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(Layout.gapBig),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Layout.radiusMedium),
          border: Border.all(
            color: CColors.borderColor,
            width: 1,
          ),
        ),
        child: SizedBox(
          height: imageHeight,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Layout.radiusMedium),
                  border: Border.all(
                    color: CColors.borderColor,
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Layout.radiusMedium),
                  child: Image.network(
                    post.photoUrl,
                    height: imageHeight,
                    width: imageHeight,
                  ),
                ),
              ),
              const SizedBox(width: Layout.gapMedium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        color: CColors.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        post.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          color: CColors.textColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: Layout.gapExtraSmall),
                    Row(
                      children: [
                        SizedBox(
                          height: 28,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: post.tags.length,
                            itemBuilder: (context, index) {
                              final tag = post.tags[index];
                              return TagWidget(tag: tag, isSelected: true);
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(width: Layout.gapSmall);
                            },
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                DateFormat("MM/dd/yyyy").format(post.date),
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: CColors.textColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: Layout.gapExtraSmall),
                              const Icon(
                                Icons.calendar_month_outlined,
                                size: 20,
                                color: CColors.iconColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
