import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/Album/data/album_repo.dart';
import 'package:test_app/features/Album/data/model/album_model.dart';

class AlbumNotifier extends StateNotifier<AsyncValue<List<AlbumModel>>> {
  AlbumNotifier(this.read) : super(const AsyncLoading()) {
    getAll();
  }
  final Reader read;
  Future<void> getAll() async {
    final data = await read(albumRepoProvider).getAll();
    state = AsyncData(data);
  }
}

final albumNotifierProvider =
    StateNotifierProvider<AlbumNotifier, AsyncValue<List<AlbumModel>>>((ref) {
  return AlbumNotifier(ref.read);
});

class AlbumChangeNotifer extends ChangeNotifier {
  AlbumChangeNotifer(this.read) : super();
  final Reader read;
  final List<AlbumModel> posts = [];
  late bool isLoading = false;
  late var error;

  Future<void> getAll() async {
    try {
      isLoading = true;
      final data = await read(albumRepoProvider).getAll();
      posts.addAll(data);
      isLoading = false;
      notifyListeners();
    } catch (err) {
      isLoading = false;
      error = err;
      notifyListeners();
    }
  }
}

final albumChangeNotiferProvider =
    ChangeNotifierProvider((ref) => AlbumChangeNotifer(ref.read));

final albumFutureProvider = FutureProvider<List<AlbumModel>>((ref) async {
  final data = await ref.read(albumRepoProvider).getAll();
  return data;
});

final singleAlbumChangeNotiferProvider =
    FutureProvider.family((ref, int id) async {
  final AlbumModel data = await ref.read(albumRepoProvider).getById(id);
  return data;
});
