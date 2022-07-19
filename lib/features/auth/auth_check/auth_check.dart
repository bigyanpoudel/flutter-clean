import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/auth/auth_state/auth_state.dart';
import 'package:test_app/features/auth/auth_state_notifier/auth_state_notifier_provider.dart';
import 'package:test_app/routes/routes.dart';

bool? isFirsTime; //To show onboarding screen only one time
final userdata = GetStorage();

class AuthCheckWidget extends ConsumerWidget {
  const AuthCheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    isFirsTime = userdata.read("intro");
    log("----> user first $isFirsTime");
    ref.listen<AuthState>(
      authStateNotifierProvider,
      (_, next) {
        next.map(
          authenticated: (_) => {
            if (isFirsTime == true || isFirsTime == null)
              {context.router.replace(const NavigationScreenRoute())}
            else
              {context.router.replace(const LoginScreenRoute())}
          },
          unAuthenticated: (_) => {
            if (isFirsTime == true || isFirsTime == null)
              {
                {context.router.replace(const NavigationScreenRoute())}
              }
            else
              {context.router.replace(const LoginPageRoute())}
          },
          unknown: (_) {},
        );
      },
    );
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}