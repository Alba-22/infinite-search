import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:infinite_search/app/pages/simple/simple_controller.dart';
import 'package:infinite_search/app/utils/constants.dart';
import 'package:infinite_search/app/utils/debouncer.dart';
import 'package:infinite_search/app/widgets/end_of_page_widget.dart';
import 'package:infinite_search/app/widgets/post_card.dart';
import 'package:mobx/mobx.dart';

import '../../widgets/more_loading_widget.dart';

class SimplePage extends StatefulWidget {
  const SimplePage({super.key});

  @override
  State<SimplePage> createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> with SingleTickerProviderStateMixin {
  final controller = SimpleController();

  late TabController tabController;
  final searchController = TextEditingController();

  final debouncer = Debouncer(duration: const Duration(milliseconds: 500));

  late ReactionDisposer react;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    controller.getItems();
    react = reaction(
      (_) => controller.showSilentError,
      (showError) {
        if (showError) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("An error occurred while searching for the next page")),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Posts",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Observer(builder: (context) {
              final items = controller.items;
              if (controller.isEmpty) {
                return const Center(child: Text("Empty"));
              } else if (controller.isInitialLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (controller.noResultsFound) {
                return const Center(child: Text("No results found"));
              } else if (controller.showScreamingError) {
                return Center(child: Text(controller.error ?? ""));
              } else if (items.isNotEmpty) {
                return ListView.separated(
                  controller: controller.scrollController,
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
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: Layout.gapMedium),
                              child: const EndOfPageWidget(),
                            ),
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

  @override
  void dispose() {
    react();
    controller.dispose();
    tabController.dispose();
    super.dispose();
  }
}
