//only have definition
import '../enitity/post_entity.dart';

abstract class PostRepo {
  Future<List<PostEntity>> getPostFromDataSource();
}
