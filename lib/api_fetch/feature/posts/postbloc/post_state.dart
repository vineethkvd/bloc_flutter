part of 'post_bloc.dart';

@immutable
abstract class PostState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class PostInitial extends PostState {}

class PostLoading extends PostState {
}

class PostLoaded extends PostState {
  List<PostEntity> post=[];

  PostLoaded({required this.post});

  @override
  // TODO: implement props
  List<Object?> get props => [post];
}

class PostError extends PostState {
  final String errorMsg;

  PostError({required this.errorMsg});
  @override
  // TODO: implement props
  List<Object?> get props => [errorMsg];
}
