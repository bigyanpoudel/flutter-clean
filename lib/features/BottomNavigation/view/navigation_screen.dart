import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/widget/molecules/BottomNavigation/bottom_navigation.dart';
import '../bloc/navigation_provider.dart';
import '../data/navigation_item_model.dart';

class NavigationScreen extends ConsumerWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewIndex = ref.watch(viewTypeProvider.state);
    final view = ref.watch(viewProvider);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.03, vertical: size.height * 0.015),
          child: view[viewIndex.state]),
      bottomNavigationBar: BottomNavigation(
        onTap: (int index) {
          viewIndex.update((state) => index);
        },
        activeIndex: viewIndex.state,
        navigationItemList: [
          NavigationItems(icon: Icons.home, label: "Home"),
          NavigationItems(icon: Icons.feed, label: "Feed"),
          NavigationItems(icon: Icons.add, label: "Add"),
          NavigationItems(icon: Icons.settings, label: "Settings"),
        ],
      ),
    );
  }
}
