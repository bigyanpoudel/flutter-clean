import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/Post/bloc/post_provider.dart';
import 'package:test_app/widget/molecules/ExpansionPanel/expanion_panel_list.dart';

class PostScreen extends ConsumerStatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PostScreenState();
}

class _PostScreenState extends ConsumerState<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: ((context, ref, child) {
        final postData = ref.watch(postNotifierProvider);
        return postData.when(
            data: (data) => CustomExpansionPanelList(data: data),
            error: (_, e) => const Text("Error occures"),
            loading: () =>
                const Center(child: CircularProgressIndicator.adaptive()));
      })),
    );
  }
}
