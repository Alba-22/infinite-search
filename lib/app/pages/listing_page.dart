import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:infinite_search/app/controllers/listing_controller.dart';
import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/repositories/list_repository.dart';
import 'package:infinite_search/app/utils/constants.dart';
import 'package:infinite_search/app/utils/debouncer.dart';
import 'package:infinite_search/app/widgets/custom_tab_bar.dart';
import 'package:infinite_search/app/widgets/custom_text_field.dart';
import 'package:infinite_search/app/widgets/filter_button.dart';
import 'package:infinite_search/app/widgets/filter_tags_bottom_sheet.dart';
import 'package:infinite_search/app/widgets/post_card.dart';

import '../widgets/more_loading_widget.dart';

class ListingPage extends StatefulWidget {
  const ListingPage({super.key});

  @override
  State<ListingPage> createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> with SingleTickerProviderStateMixin {
  // TODO: Move to controller
  final scrollController = ScrollController();

  final controller = ListingController(ListRepositoryImpl());

  late TabController tabController;
  final searchController = TextEditingController();

  final debouncer = Debouncer(duration: const Duration(milliseconds: 500));

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    controller.getItems();
    scrollController.addListener(listener);
  }

  void listener() {
    if (scrollController.hasClients &&
        scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      controller.getNextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          "Publicações",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: Layout.gapLarge),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: Layout.gapBig),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: searchController,
                    onChanged: (value) {
                      debouncer.run(() {
                        controller.setSearchQuery(value);
                      });
                    },
                  ),
                ),
                const SizedBox(width: Layout.gapSmall),
                FilterButton(
                  onTap: () {
                    showFilterTagsBottomSheet(
                      context,
                      initiallySelected: [],
                      onSelectTags: (tags) {
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: Layout.gapBig),
          CustomTabBar(
            controller: tabController,
            onTap: (value) {
              if (value == 0) {
                controller.switchStatus(StatusEnum.relevant);
              } else if (value == 1) {
                controller.switchStatus(StatusEnum.recent);
              }
              searchController.clear();
            },
          ),
          Expanded(
            child: Observer(builder: (context) {
              final items = controller.items;
              if (controller.isEmpty) {
                return const Center(child: Text("Empty"));
              } else if (controller.isInitialLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (controller.noResultsFound) {
                return const Center(child: Text("No results found"));
              } else if (items.isNotEmpty) {
                return ListView.separated(
                  controller: scrollController,
                  itemCount: items.length,
                  padding: EdgeInsets.only(
                    top: Layout.gapBig,
                    left: Layout.gapBig,
                    right: Layout.gapBig,
                    bottom: MediaQuery.of(context).padding.bottom + Layout.gapBig,
                  ),
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Observer(builder: (context) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PostCard(post: item),
                          if (index == items.length - 1 && controller.isInInfiniteLoading) ...[
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: Layout.gapMedium),
                              child: const MoreLoadingWidget(),
                            )
                          ],
                          if (index == items.length - 1 && controller.hasReachedEnd) ...[
                            const Center(child: Text("Chegou ao fim"))
                          ]
                        ],
                      );
                    });
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: Layout.gapMedium);
                  },
                );
              }
              return const SizedBox();
            }),
          ),
        ],
      ),
    );
  }
}
