import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../theme/theme.dart';

final themeProvider =
    StateNotifierProvider((ref) => ThemeSelectorNotifier(GetStorage()));

class ThemeSelectorNotifier extends StateNotifier {
  ThemeSelectorNotifier(
    this._getStorage,
  ) : super(_getStorage.read("theme") ?? "light");
  final GetStorage _getStorage;

  void addTheme(String? theme) {
    _getStorage.write('theme', theme ?? "light");
    state = theme;
  }

  ThemeData getTheme(theme) {
    switch (theme) {
      case "Light":
        return lightTheme;
      case "Dark":
        return darkTheme;
      case "Luxury":
        return luxuryTheme;
      default:
        return lightTheme;
    }
  }
}
