import 'dart:developer';

import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/models/query_model.dart';
import 'package:infinite_search/app/repositories/data.dart';

abstract interface class ListRepository {
  Future<List<PostModel>> getItems(QueryModel query);
}

class ListRepositoryImpl implements ListRepository {
  @override
  Future<List<PostModel>> getItems(QueryModel query) async {
    log("Getting items");
    await Future.delayed(const Duration(seconds: 2));
    final firstItemIndex = (query.pageSize * query.page) - query.pageSize;
    List<PostModel> search = posts;
    if (query.searchQuery.isNotEmpty) {
      search = search
          .where(
            (element) => element.title.toLowerCase().contains(query.searchQuery.toLowerCase()),
          )
          .toList();
    }
    search = search.where((element) => element.status == query.status).toList();

    if (query.tags.isNotEmpty) {
      search = search.where((element) {
        return query.tags.any((tag) => element.tags.contains(tag));
      }).toList();
    }

    search = search.skip(firstItemIndex).take(query.pageSize).toList();
    return search;
  }
}
