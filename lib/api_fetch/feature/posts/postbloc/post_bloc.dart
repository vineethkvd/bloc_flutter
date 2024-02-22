import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_flutter/api_fetch/domain/enitity/post_entity.dart';
import 'package:bloc_flutter/api_fetch/domain/usecases/post_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../sample_post.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<PostEvent>((event, emit) async {
      try {
        final posts = await PostUseCase().getDataFromDataSource();
        emit(PostLoaded(post: posts));
      } catch (e) {
        emit(PostError(errorMsg: e.toString()));
      }
    });
  }
}
