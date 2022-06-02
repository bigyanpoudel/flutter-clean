import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/Post/data/post_model/post_model.dart';
import 'package:test_app/utils/base_client/base_client.dart';

final postRepoProvider = Provider<PostRepo>((ref) => PostRepo());

class PostRepo {
  final _client = ApiHelper.instance;
  Future<List<PostModel>> getPosts() async {
    try {
      final response = await _client.get('/posts') as List;
      final data = response.map((e) => PostModel.fromJson(e)).toList();
      return data;
    } catch (error) {
      throw Exception("invalide data $error");
    }
  }

  Future<PostModel> getPostsById(int id) async {
    try {
      final response = await _client.get('/posts/$id') as List;
      final data = response.map((e) => PostModel.fromJson(e)) as PostModel;
      return data;
    } catch (error) {
      throw Exception("invalide data $error");
    }
  }
}
