import 'package:flutter/material.dart';
import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/pages/simple/simple_store.dart';
import 'package:infinite_search/app/utils/constants.dart';
import 'package:infinite_search/app/utils/debouncer.dart';
import 'package:infinite_search/app/widgets/end_of_page_widget.dart';
import 'package:infinite_search/app/widgets/post_card.dart';
import 'package:infinite_search/core/notifier/notifier_infinite_widget.dart';

import '../../widgets/more_loading_widget.dart';

class SimplePage extends StatefulWidget {
  const SimplePage({super.key});

  @override
  State<SimplePage> createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> with SingleTickerProviderStateMixin {
  final store = SimpleStore();

  late TabController tabController;
  final searchController = TextEditingController();

  final debouncer = Debouncer(duration: const Duration(milliseconds: 500));

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    store.getItems();
    store.addListener(listener);
  }

  void listener() {
    if (store.showSilentError) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("An error occurred while searching for the next page")),
      );
    }
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
            child: InfiniteWidget<PostModel>(
              store: store,
              onEmptyState: () {
                return const Center(child: Text("Empty"));
              },
              onInitialLoadingState: () {
                return const Center(child: CircularProgressIndicator());
              },
              onNoResultsState: () {
                return const Center(child: Text("No results found"));
              },
              onScreamingErrorState: (String error) {
                return Center(child: Text(error));
              },
              onSuccessState: (List<PostModel> items) {
                return ListView.separated(
                  controller: store.scrollController,
                  itemCount: items.length,
                  padding: EdgeInsets.only(
                    top: Layout.gapBig,
                    left: Layout.gapBig,
                    right: Layout.gapBig,
                    bottom: MediaQuery.of(context).padding.bottom + Layout.gapBig,
                  ),
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PostCard(post: item),
                        if (index == items.length - 1 && store.isInInfiniteLoading) ...[
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: Layout.gapMedium),
                            child: const MoreLoadingWidget(),
                          )
                        ],
                        if (index == items.length - 1 && store.hasReachedEnd) ...[
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: Layout.gapMedium),
                            child: const EndOfPageWidget(),
                          ),
                        ]
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: Layout.gapMedium);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    store.dispose();
    store.removeListener(listener);
    tabController.dispose();
    super.dispose();
  }
}
