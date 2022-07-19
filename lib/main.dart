import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/utils/base_client/path_provider.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  //initiallize path for offline cache
  await AppPathProvider.initPath();
  //initialized getstorage for local database
  await GetStorage.init();

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
