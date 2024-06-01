import 'package:equatable/equatable.dart';
import 'package:infinite_search/app/models/post_model.dart';

class QueryModel extends Equatable {
  final int page;
  final int pageSize;
  final String searchQuery;
  final StatusEnum status;
  final List<Tag> tags;

  const QueryModel({
    required this.page,
    required this.pageSize,
    required this.searchQuery,
    required this.status,
    required this.tags,
  });

  @override
  List<Object> get props => [page, pageSize, searchQuery, status, tags];

  @override
  bool get stringify => true;

  QueryModel copyWith({
    int? page,
    int? pageSize,
    String? searchQuery,
    StatusEnum? status,
    List<Tag>? tags,
  }) {
    return QueryModel(
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      searchQuery: searchQuery ?? this.searchQuery,
      status: status ?? this.status,
      tags: tags ?? this.tags,
    );
  }
}
