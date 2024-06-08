import 'package:equatable/equatable.dart';
import 'package:infinite_search/app/models/post_model.dart';

class RequestPayload extends Equatable {
  final int page;
  final int pageSize;
  final String text;
  final StatusEnum status;
  final List<Tag> tags;

  const RequestPayload({
    required this.page,
    required this.pageSize,
    required this.text,
    required this.status,
    required this.tags,
  });

  @override
  List<Object> get props => [page, pageSize, text, status, tags];

  @override
  bool get stringify => true;

  RequestPayload copyWith({
    int? page,
    int? pageSize,
    String? text,
    StatusEnum? status,
    List<Tag>? tags,
  }) {
    return RequestPayload(
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      text: text ?? this.text,
      status: status ?? this.status,
      tags: tags ?? this.tags,
    );
  }
}
