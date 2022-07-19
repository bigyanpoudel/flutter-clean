import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'auth_failure/auth_failure.dart';
import 'model/user_model.dart' as model;

final authRepoProvider = Provider<IAuthRepository>((ref) => AuthRepository());

abstract class IAuthRepository {
  Stream<Option<model.User>> checkAuth();
  Future<Either<AuthFailure, Unit>> loginGoogle();
  Future<Either<AuthFailure, Unit>> loginFacebook();

  Future<Either<AuthFailure, Unit>> logout();
}

class AuthRepository implements IAuthRepository {
  final firebaseAuth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn();
  final facebookSignIn = FacebookAuth.instance;

  @override
  Stream<Option<model.User>> checkAuth() {
    return firebaseAuth.authStateChanges().map((user) {
      log("user---> auth check $user");
      if (user != null) {
        return some(user.toDomain());
      } else {
        return none();
      }
    });
  }

  @override
  Future<Either<AuthFailure, Unit>> loginFacebook() {
    // TODO: implement loginFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> loginGoogle() async {
    try {
      final googleUser = await googleSignIn.signIn();

      final googleAuth = await googleUser?.authentication;
      log("googleAuth---> $googleAuth $googleUser");
      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
      await FirebaseAuth.instance.signInWithCredential(credential);
      return right(unit);
    } on FirebaseAuthException catch (err) {
      log("error--> $err");
      if (err.code == 'account-exists-with-different-credential') {
        return left(const AuthFailure.userAlreadyExists());
      } else {
        return left(const AuthFailure.serverFailure());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}

extension FirebaseUserX on User {
  model.User toDomain() => model.User(
        uid: uid,
        emailAddress: email ??
            '', // if email is not available (e.g. may be in facecbook login)
      );
}
