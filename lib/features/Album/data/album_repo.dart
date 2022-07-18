import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/Album/data/model/album_model.dart';
import 'package:test_app/utils/base_client/base_client.dart';

final albumRepoProvider = Provider((ref) => AlbumRepo());

class AlbumRepo {
  final _client = ApiHelper.instance;

  Future<List<AlbumModel>> getAll() async {
    try {
      final List response = await _client.get("/albums");
      final data = response.map((e) => AlbumModel.fromJson(e)).toList();
      return data;
    } catch (err) {
      throw Exception("Invalid Request $err");
    }
  }

  Future<AlbumModel> getById(int id) async {
    try {
      final response = await _client.get("/albums/$id");
      final data = AlbumModel.fromJson(response);
      return data;
    } catch (err) {
      throw Exception("Invalid Request $err");
    }
  }
}
