import 'package:infinite_search/app/controllers/pagination_controller.dart';
import 'package:infinite_search/app/models/post_model.dart';
import 'package:infinite_search/app/models/request_payload.dart';
import 'package:infinite_search/app/repositories/list_repository.dart';

class SimpleController extends PaginationController<PostModel> {
  @override
  bool get isFilterEmpty => true;

  @override
  Future<List> request() {
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
