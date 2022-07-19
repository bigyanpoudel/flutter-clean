import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/auth/auth_state/auth_state.dart';
import 'package:test_app/features/auth/data/auth_repo.dart';

final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) => AuthStateNotifier(ref.read(authRepoProvider)),
);

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier(this.authRepository) : super(const AuthState.unknown()) {
    init();
  }

  final IAuthRepository authRepository;

  void init() {
    authRepository.checkAuth().listen((event) {
      log("event---> $event");
      event.fold(
        () => state = const AuthState.unAuthenticated(),
        (user) => state = AuthState.authenticated(user: user),
      );
    });
  }

  Future<void> logout() async {
    await authRepository.logout();
  }
}
