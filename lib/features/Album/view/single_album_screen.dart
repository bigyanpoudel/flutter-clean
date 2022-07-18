import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/Album/bloc/album_provider.dart';

class SingleAlbumScreen extends ConsumerWidget {
  // static const route = "/album";
  final int id;
  const SingleAlbumScreen({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(singleAlbumChangeNotiferProvider(id));
    return Scaffold(
      appBar: AppBar(title: const Text("Hello")),
      body: data.when(
          data: (data) => Text(data.title),
          error: (_, e) => const Text("Error"),
          loading: () => const CircularProgressIndicator.adaptive()),
    );
  }
}
