import 'package:bloc_flutter/api_fetch/domain/enitity/post_entity.dart';

class PostModel extends PostEntity {
  PostModel(
      {required super.userId,
      required super.id,
      required super.title,
      required super.body});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
  }
}
