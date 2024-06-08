import 'post_model.dart';

final class QueryModel {
  final String text;
  final StatusEnum status;
  final List<Tag> tags;

  QueryModel({
    required this.text,
    required this.status,
    required this.tags,
  });

  factory QueryModel.empty() {
    return QueryModel(
      text: "",
      status: StatusEnum.relevant,
      tags: [],
    );
  }

  bool get isFilterEmpty => text.isEmpty && tags.isEmpty;

  QueryModel copyWith({
    String? text,
    StatusEnum? status,
    List<Tag>? tags,
  }) {
    return QueryModel(
      text: text ?? this.text,
      status: status ?? this.status,
      tags: tags ?? this.tags,
    );
  }
}
