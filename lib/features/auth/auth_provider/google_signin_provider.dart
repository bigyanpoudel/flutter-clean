import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/auth/data/auth_repo.dart';
import 'package:test_app/features/auth/form_submission_state/form_submission_state.dart';

final googleAuthProvider = ChangeNotifierProvider(
    (ref) => LoginWithGoogle(ref.watch(authRepoProvider)));

class LoginWithGoogle extends ChangeNotifier {
  LoginWithGoogle(this.repo);
  final IAuthRepository repo;
  FormzStatus formzStatus = const FormzStatus.initial();
  Future<void> loginWithGoogle() async {
    log("inital state $formzStatus");
    formzStatus = const FormzStatus.submissionInProgress();
    log("progress state $formzStatus");
    notifyListeners();
    final response = await repo.loginGoogle();
    response.fold((l) {
      formzStatus = FormzStatus.submissionFailure(
        error: l.when(
          serverFailure: () => 'serverFailure',
          userAlreadyExists: () => 'userAlreadyExists',
          userNotFound: () => "userNotFound",
        ),
      );
      log("error state $formzStatus");
    }, (r) {
      formzStatus = const FormzStatus.submissionSuccess();
      log("success state $formzStatus");
      notifyListeners();
    });
  }
}
