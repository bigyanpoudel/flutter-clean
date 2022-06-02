import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/Album/view/album_screen.dart';
import 'package:test_app/features/Post/view/post_screen.dart';

final viewTypeProvider = AutoDisposeStateProvider((ref) => 0);

final viewProvider = Provider((ref) => [
      const PostScreen(),
      const AlbumScreen(),
      const PostScreen(),
      const AlbumScreen(),
    ]);
