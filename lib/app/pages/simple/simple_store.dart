import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/models/request_payload.dart';
import 'package:infinite_search/app/repositories/list_repository.dart';
import 'package:infinite_search/core/notifier/notifier_pagination_store.dart';

final class SimpleStore extends PaginationStore<PostModel> {
  @override
  bool get isFilterEmpty => true;

  @override
  Future<List<PostModel>> request() {
    return ListRepositoryImpl().getItems(
      RequestPayload(
        page: page.currentPage,
        pageSize: page.pageSize,
        text: "",
        status: StatusEnum.relevant,
        tags: const [],
      ),
    );
  }
}
