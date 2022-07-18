import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/Album/bloc/album_provider.dart';

import '../../../routes/routes.dart';

class AlbumScreen extends ConsumerWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => ref.watch(albumNotifierProvider.notifier).getAll(),
        child: Consumer(
          builder: (context, ref, child) {
            final album = ref.watch(albumNotifierProvider);

            return album.when(
                data: (data) => ListView.builder(
                    itemBuilder: ((context, index) => ListTile(
                          title: Text(data[index].title),
                          onTap: () {
                            // context.rou.pushNamed(
                            //       SingleAlbumScreen.route,
                            //       arguments: {"id": data[index].id});
                            context.router.push(
                                SingleAlbumScreenRoute(id: data[index].id));
                          },
                        )),
                    itemCount: data.length),
                error: (_, e) => Text("Error occured! $e"),
                loading: () =>
                    const Center(child: CircularProgressIndicator.adaptive()));
          },
        ),
      ),
    );
  }
}

// class AlbumScreen extends StatefulHookConsumerWidget {
//   const AlbumScreen({Key? key}) : super(key: key);

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _AlbumScreenState();
// }

// class _AlbumScreenState extends ConsumerState<AlbumScreen> {
//   @override
//   void didChangeDependencies() {
//     // TODO: implement didChangeDependencies
//     ref.watch(albumChangeNotiferProvider).getAll();
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Consumer(
//         builder: (context, ref, child) {
//           final state = ref.watch(albumChangeNotiferProvider);
//           if (state.isLoading) {
//             return const Center(child: CircularProgressIndicator.adaptive());
//           }
//           if (state.error != null) {
//             return Text("error ${state.error}");
//           }

//           return ListView.builder(
//               itemBuilder: ((context, index) => Text(state.posts[index].title)),
//               itemCount: state.posts.length);
//         },
//       ),
//     );
//   }
// }
