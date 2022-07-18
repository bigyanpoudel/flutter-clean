import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/config/theme/theme_provider.dart';

class ThemeSelector extends ConsumerWidget {
  const ThemeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void themeAction(String theme) {
      ref.read(themeProvider.notifier).addTheme(theme);
    }

    return PopupMenuButton(
      icon: const Icon(
        Icons.palette_outlined,
        color: Colors.white,
      ),
      onSelected: themeAction,
      itemBuilder: (BuildContext context) {
        return Themes.types.map((String theme) {
          return PopupMenuItem<String>(
            value: theme,
            child: Text(theme),
          );
        }).toList();
      },
    );
  }
}

class Themes {
  static const String light = 'Light';
  static const String dark = 'Dark';
  static const String luxury = 'Luxury';
  static const List<String> types = <String>[light, dark, luxury];
}
