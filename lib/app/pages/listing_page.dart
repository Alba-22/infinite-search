import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:infinite_search/app/controllers/listing_controller.dart';
import 'package:infinite_search/app/models/item_model.dart';
import 'package:infinite_search/app/repositories/list_repository.dart';
import 'package:infinite_search/app/utils/debouncer.dart';

class ListingPage extends StatefulWidget {
  const ListingPage({super.key});

  @override
  State<ListingPage> createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> with SingleTickerProviderStateMixin {
  // TODO: Mover pro controller
  final scrollController = ScrollController();

  final controller = ListingController(ListRepositoryImpl());

  late TabController tabController;

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
        title: const Text("Listing"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  onChanged: (value) {
                    debouncer.run(() {
                      controller.setSearchQuery(value);
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                height: 32,
                width: 32,
                color: Colors.red,
              ),
            ],
          ),
          const SizedBox(height: 16),
          TabBar(
            controller: tabController,
            tabs: const [
              Text("Relevantes"),
              Text("Recentes"),
            ],
            onTap: (value) {
              if (value == 0) {
                controller.switchStatus(StatusEnum.relevant);
              } else if (value == 1) {
                controller.switchStatus(StatusEnum.recent);
              }
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
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Observer(builder: (context) {
                      return Column(
                        children: [
                          Container(
                            height: 150,
                            color: Colors.amber.withOpacity(0.2),
                            child: Center(
                              child: Text(
                                item.title,
                                style: const TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          if (index == items.length - 1 && controller.isInInfiniteLoading) ...[
                            const Center(child: CircularProgressIndicator())
                          ],
                          if (index == items.length - 1 && controller.hasReachedEnd) ...[
                            const Center(child: Text("Chegou ao fim"))
                          ]
                        ],
                      );
                    });
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 12);
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
