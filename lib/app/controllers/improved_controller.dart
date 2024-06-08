import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/models/request_payload.dart';
import 'package:infinite_search/app/repositories/list_repository.dart';
import 'package:mobx/mobx.dart';

import '../models/query_model.dart';
import 'pagination_controller.dart';

part 'improved_controller.g.dart';

class ImprovedControllerStore = ImprovedControllerStoreBase with _$ImprovedControllerStore;

abstract class ImprovedControllerStoreBase extends PaginationController<PostModel> with Store {
  ImprovedControllerStoreBase() : super(pageSize: 10);

  @readonly
  QueryModel _query = QueryModel.empty();

  @action
  void setSearchText(String text) {
    _query = _query.copyWith(
      text: text,
    );
    reset();
    getItems();
  }

  @action
  void setTags(List<Tag> tags) {
    _query = _query.copyWith(tags: tags);
    reset();
    getItems();
  }

  @action
  void setStatus(StatusEnum status) {
    _query = QueryModel.empty().copyWith(
      status: status,
    );
    reset();
    getItems();
  }

  @override
  bool get isFilterEmpty => _query.isFilterEmpty;

  @override
  Future<List<PostModel>> request() async {
    return ListRepositoryImpl().getItems(
      RequestPayload(
        page: page.currentPage,
        pageSize: page.pageSize,
        text: _query.text,
        status: _query.status,
        tags: _query.tags,
      ),
    );
  }
}
