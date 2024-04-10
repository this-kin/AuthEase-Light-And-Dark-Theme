import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/domain/repositories/base_auth_repository.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final Ref _ref;
  final BaseAuthRepository _authRepository;

  AuthStateNotifier({
    required Ref ref,
    required BaseAuthRepository authRepository,
  })  : _ref = ref,
        _authRepository = authRepository,
        super(AuthState.unauthorized());

  Future<void> signup({
    required String? name,
    email,
    password,
    phone,
    address,
  }) async {
    state = const AuthState.authenticating();
    try {
      final result = await _authRepository.register(
        username: name,
        email: email,
        password: password,
        phone: phone,
        address: address,
      );
      state = AuthState.registered(result);
    } catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }

  Future<void> login({required String? name, password}) async {
    state = const AuthState.authenticating();
    try {
      // fake authentication
      final result = await _authRepository.login(
        username: name,
        password: password,
      );
      state = AuthState.authenticated(result);
    } catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }
}
