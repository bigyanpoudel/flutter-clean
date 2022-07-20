import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/auth/data/auth_failure/auth_failure.dart';
import 'package:test_app/features/auth/data/auth_repo.dart';
import 'package:test_app/features/auth/form_submission_state/form_submission_state.dart';

final appAuthProvider =
    Provider<AuthProvider>((ref) => AuthProvider(ref.watch(authRepoProvider)));

class AuthProvider extends ChangeNotifier {
  AuthProvider(this.authRepo);
  final IAuthRepository authRepo;

  FormzStatus formzStatus = const FormzStatus.initial();

  Future<void> logout() async {
    formzStatus = const FormzStatus.submissionInProgress();
    notifyListeners();
    log("logout---->");
    try {
      await authRepo.logout();
      formzStatus = const FormzStatus.submissionSuccess();
      notifyListeners();
    } on AuthFailure catch (e) {
      formzStatus = FormzStatus.submissionFailure(error: e.toString());
      notifyListeners();
    }
  }
}
