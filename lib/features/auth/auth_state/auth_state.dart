import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/features/auth/data/model/user_model.dart';
part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unknown() = _Unknown;
  const factory AuthState.authenticated({required User user}) = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
