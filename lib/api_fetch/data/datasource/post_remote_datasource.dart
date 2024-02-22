import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/post_modal.dart';

abstract class PostRemoteDataSource {
  Future<List<PostModel>> getFromApi();
}

class PostRemoteDataSourceImpl implements PostRemoteDataSource {
  final client = http.Client();

  @override
  Future<List<PostModel>> getFromApi() async {
    try {
      final response = await client
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      if (response.statusCode == 200) {
        final List<dynamic> postsJson = json.decode(response.body);
        final List<PostModel> posts =
            postsJson.map((json) => PostModel.fromJson(json)).toList();
        return posts;
      } else {
        // Handle non-200 status codes (e.g., show an error message)
        throw Exception('Failed to fetch posts');
      }
    } catch (e) {
      // Handle any other exceptions (e.g., network issues)
      throw Exception('An error occurred: $e');
    }
  }
}
