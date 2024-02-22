import 'package:bloc_flutter/api_fetch/domain/enitity/post_entity.dart';

import '../../domain/repository/post_repository.dart';
import '../datasource/post_remote_datasource.dart';

class PostRepoImpl implements PostRepo {
  PostRemoteDataSource postRemoteDataSource = PostRemoteDataSourceImpl();
  @override
  Future<List<PostEntity>> getPostFromDataSource() async {
    final post = await postRemoteDataSource.getFromApi();
    return post;
  }
}
