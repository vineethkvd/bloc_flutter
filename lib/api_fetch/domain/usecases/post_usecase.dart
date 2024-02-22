//usecase anu api/db poyit data konduvaranam enna request idunnay
import 'package:bloc_flutter/api_fetch/data/repository/post_repo_impl.dart';
import 'package:bloc_flutter/api_fetch/domain/enitity/post_entity.dart';

import '../../sample_post.dart';
import '../repository/post_repository.dart';

class PostUseCase {
  PostRepo postRepo=PostRepoImpl();
  Future<List<PostEntity>> getDataFromDataSource() async {
    try {
      final post = await postRepo. getPostFromDataSource();
      return post;
    } catch (e) {
      // Handle any errors (e.g., network issues, data parsing errors)
      print('Error fetching data: $e');
      return []; // Return an empty list or handle the error as needed
    }
  }
}
