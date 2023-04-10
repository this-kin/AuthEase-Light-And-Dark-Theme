import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/data/states/auth_state.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final Ref _ref;

  AuthStateNotifier({required Ref ref})
      : _ref = ref,
        super(AuthState.unauthorized());

  Future<void> signup({required String? name, email, password}) async {
    state = const AuthState.authenticating();
    try {
      // fake authentication
      Future.delayed(const Duration(minutes: 5));
      state = AuthState.authenticated(name);
    } on Exception catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }

  Future<void> login({required String? email, password}) async {
    state = const AuthState.authenticating();
    try {
      // fake authentication
      Future.delayed(const Duration(seconds: 30), () {
        state = AuthState.authenticated(email);
      });
    } on Exception catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }

  Future<void> verify({dynamic code}) async {
    state = const AuthState.authenticating();
    try {
      // fake authentication
      Future.delayed(const Duration(seconds: 1));
      state = AuthState.authenticated();
    } on Exception catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }

  Future<void> addContact({dynamic contact}) async {
    state = const AuthState.authenticating();
    try {
      // fake authentication
      Future.delayed(const Duration(seconds: 1));
      state = AuthState.authenticated();
    } on Exception catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }

  Future<void> setPin({dynamic pin}) async {
    state = const AuthState.authenticating();
    try {
      // fake authentication
      Future.delayed(const Duration(seconds: 1));
      state = AuthState.authenticated();
    } on Exception catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }
}
