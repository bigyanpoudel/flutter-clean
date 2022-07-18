import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/config/localization/app_localization.dart';
import 'package:test_app/config/theme/theme_selector.dart';
import 'package:test_app/widget/molecules/BottomNavigation/bottom_navigation.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../routes/routes.dart';
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
      appBar: AppBar(
        title: const Text("hello").tr(),
        actions: [
          const ThemeSelector(),
          const AppLocalization(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                context.router.push(const SettingPageRoute());
              },
              child: const Icon(
                Icons.settings,
              ),
            ),
          ),
        ],
      ),
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
