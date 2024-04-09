import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final Ref _ref;

  AuthStateNotifier({required Ref ref})
      : _ref = ref,
        super(AuthState.unauthorized());

  Future<void> signup({required String? name, email, password}) async {
    state = const AuthState.authenticating();
    try {
      // fake authentication
      await Future.delayed(const Duration(seconds: 30));
      state = AuthState.registered(name);
    } on Exception catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }

  Future<void> login({required String? email, password}) async {
    state = const AuthState.authenticating();
    try {
      // fake authentication
      await Future.delayed(const Duration(seconds: 30));
      state = AuthState.authenticated(email);
    } on Exception catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }
}
