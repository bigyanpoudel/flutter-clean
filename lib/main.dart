import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/utils/base_client/path_provider.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPathProvider.initPath();
  runApp(const ProviderScope(
    child: App(),
  ));
}
