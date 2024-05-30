import 'dart:developer';

import 'package:infinite_search/app/models/item_model.dart';
import 'package:infinite_search/app/models/query_model.dart';
import 'package:uuid/uuid.dart';

abstract interface class ListRepository {
  Future<List<ItemModel>> getItems(QueryModel query);
}

class ListRepositoryImpl implements ListRepository {
  @override
  Future<List<ItemModel>> getItems(QueryModel query) async {
    log("Getting items");
    await Future.delayed(const Duration(seconds: 2));
    final firstItemIndex = (query.pageSize * query.page) - query.pageSize;
    List<ItemModel> search = _items;
    if (query.searchQuery.isNotEmpty) {
      search = search
          .where(
            (element) => element.title.toLowerCase().contains(query.searchQuery.toLowerCase()),
          )
          .toList();
    }
    search = search.where((element) => element.status == query.status).toList();
    search = search.skip(firstItemIndex).take(query.pageSize).toList();
    return search;
  }
}

final _items = List.generate(50, (index) {
  return ItemModel(
    id: const Uuid().v4(),
    title: "Competição ${index + 1}",
    description: "Quem montar primeiro ganha",
    photoUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg",
    date: DateTime(2024, 05, 20, 14),
    status: index % 4 == 0 ? StatusEnum.relevant : StatusEnum.recent,
  );
});
