import 'package:equatable/equatable.dart';

class ItemModel extends Equatable {
  final String id;
  final String title;
  final String description;
  final String photoUrl;
  final DateTime date;
  final StatusEnum status;

  const ItemModel({
    required this.id,
    required this.title,
    required this.description,
    required this.photoUrl,
    required this.date,
    required this.status,
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
    ];
  }

  @override
  bool get stringify => true;
}

enum StatusEnum {
  relevant,
  recent,
}
