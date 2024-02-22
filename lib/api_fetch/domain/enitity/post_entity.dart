import 'package:equatable/equatable.dart';

class PostEntity extends Equatable {
  int userId;
  int id;
  String title;
  String body;

  PostEntity({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [this.userId, this.id, this.title, this.body];
}
