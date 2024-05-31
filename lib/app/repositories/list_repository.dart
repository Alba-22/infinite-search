import 'dart:developer';

import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/models/query_model.dart';
import 'package:uuid/uuid.dart';

abstract interface class ListRepository {
  Future<List<PostModel>> getItems(QueryModel query);
}

class ListRepositoryImpl implements ListRepository {
  @override
  Future<List<PostModel>> getItems(QueryModel query) async {
    log("Getting items");
    await Future.delayed(const Duration(seconds: 2));
    final firstItemIndex = (query.pageSize * query.page) - query.pageSize;
    List<PostModel> search = _items;
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
  return PostModel(
    id: const Uuid().v4(),
    title: "Competição ${index + 1}",
    description:
        "Nisi veniam in ullamco qui enim labore exercitation exercitation officia nisi laboris do. Cillum laboris labore voluptate nulla esse consectetur est elit. Dolor anim culpa velit eu culpa eiusmod aliqua anim et irure laborum. Ullamco deserunt duis proident in nisi eiusmod id esse ea. Est mollit veniam do ad tempor reprehenderit sint aliquip consequat incididunt exercitation minim. Veniam tempor ullamco occaecat Lorem id laborum dolor velit ex anim. Labore amet qui Lorem cillum anim ipsum.",
    photoUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Rubiks_cube_by_keqs.jpg/1200px-Rubiks_cube_by_keqs.jpg",
    date: DateTime(2024, 05, 20, 14),
    status: index % 4 == 0 ? StatusEnum.relevant : StatusEnum.recent,
    tags: const [Tag.mobile, Tag.backend],
  );
});
