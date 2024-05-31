import 'dart:ui';

import 'package:equatable/equatable.dart';

class PostModel extends Equatable {
  final String id;
  final String title;
  final String description;
  final String photoUrl;
  final DateTime date;
  final StatusEnum status;
  final List<Tag> tags;

  const PostModel({
    required this.id,
    required this.title,
    required this.description,
    required this.photoUrl,
    required this.date,
    required this.status,
    required this.tags,
  });

  @override
  List<Object> get props {
    return [
      id,
      title,
      description,
      photoUrl,
      date,
      status,
      tags,
    ];
  }

  @override
  bool get stringify => true;
}

enum StatusEnum {
  relevant,
  recent,
}

enum Tag {
  frontend("frontend", Color(0xFFff5e3c)),
  backend("backend", Color(0xFF94e400)),
  mobile("mobile", Color(0xFF0077e4)),
  database("database", Color(0xFFba28ff)),
  design("design", Color(0xFFff46d3));

  final String text;
  final Color backgroundColor;

  const Tag(this.text, this.backgroundColor);
}
