import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unauthorized() = UNAUTHORIZED;

  const factory AuthState.authenticating() = AUTHENTICATING;

  const factory AuthState.authenticated([name]) = AUTHENTICATED;

  const factory AuthState.registered([name]) = REGISTERED;

  const factory AuthState.failed({required String reason}) = FAILED;
}
