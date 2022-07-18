import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/utils/base_client/path_provider.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppPathProvider.initPath();
  runApp(ProviderScope(
    child: EasyLocalization(
      supportedLocales: const [
        Locale('ja'),
        Locale('en'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('ja'),
      child: const App(),
    ),
  ));
}
