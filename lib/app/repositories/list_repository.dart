import 'dart:developer';

import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/models/request_payload.dart';
import 'package:infinite_search/app/repositories/data.dart';

abstract interface class ListRepository {
  Future<List<PostModel>> getItems(RequestPayload query);
}

class ListRepositoryImpl implements ListRepository {
  @override
  Future<List<PostModel>> getItems(RequestPayload query) async {
    log(query.toString());
    log("Getting items");
    // throw Exception();
    await Future.delayed(const Duration(seconds: 2));
    final firstItemIndex = (query.pageSize * query.page) - query.pageSize;
    List<PostModel> search = posts;
    if (query.text.isNotEmpty) {
      search = search
          .where(
            (element) => element.title.toLowerCase().contains(query.text.toLowerCase()),
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
    log("Got ${search.length} items");
    return search;
  }
}
