import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/Post/data/post_model/post_model.dart';
import 'package:test_app/features/Post/data/post_repo.dart';

class PostNotifier extends StateNotifier<AsyncValue<List<PostModel>>> {
  PostNotifier(this.read) : super(const AsyncLoading()) {
    getPosts();
  }
  final Reader read;
  Future<void> getPosts() async {
    final data = await read(postRepoProvider).getPosts();
    state = AsyncData(data);
  }
}

final postNotifierProvider =
    StateNotifierProvider<PostNotifier, AsyncValue<List<PostModel>>>((ref) {
  return PostNotifier(ref.read);
});
