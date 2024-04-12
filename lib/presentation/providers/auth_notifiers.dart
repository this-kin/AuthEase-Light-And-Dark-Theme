import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/data/entities/user_model.dart';
import 'package:qoute_app/domain/local_storage/kv_storage.dart';
import 'package:qoute_app/domain/repositories/base_auth_repository.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';
import 'package:qoute_app/presentation/providers/states/future_state.dart';

/// A Global [StateProvider] for retreiving [UserData] information
final userStateProvider = StateProvider<UserData?>((ref) => UserData.toJson());

class AuthStateNotifier extends StateNotifier<AuthState> {
  final Ref _ref;
  final KeyValueStorage _storage;
  final BaseAuthRepository _authRepository;

  late String? _email;
  late String? _password;
  late UserData? _currentUser;

  AuthStateNotifier({
    required Ref ref,
    required KeyValueStorage storage,
    required BaseAuthRepository authRepository,
  })  : _ref = ref,
        _storage = storage,
        _authRepository = authRepository,
        super(AuthState.unauthorized()) {
    // _initialize();
  }

  void _initialize() async {
    final userState = _ref.watch(userStateProvider.notifier);
    state = AuthState.authenticating();
    try {
      _currentUser = _storage.getAuthUser();
      _email = await _storage.getAuthEmail();
      _password = await _storage.getAuthPassword();

      bool? authenticated = _storage.getAuthState();
      if (!authenticated ||
          _currentUser == null ||
          _email!.isEmpty ||
          _password!.isEmpty) {
        state = AuthState.unauthorized();
      }
      userState.state = _currentUser;
      state = AuthState.authenticated(_currentUser!.username);
    } catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }

  void _updateCredential(email, password) {
    _storage.setAuthEmail(email);
    _storage.setAuthPassword(password);
  }

  void _updateAuthProfile() {
    _storage.setAuthState(state);
    debugPrint('auth state $state');
    _storage.setAuthUser(_currentUser ?? UserData.toJson());
    debugPrint('auth user ${_currentUser.toString()}');
  }

  /// A function to signup new user if successful [AuthState] is [REGISTERED]
  /// else [AuthState] is [AuthState.failed] with reason of failure,
  /// [AUTHENTICATING] is the loading state of provider.

  Future<void> signup({
    required String name,
    required String email,
    required String password,
    required String phone,
    required String address,
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
      _updateCredential(email, password);
      login(name: name, password: password);
      _storage.setAuthState(state);
    } catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }

  /// A function to login new  if successful [AuthState] is [AUTHENTICATED]
  /// else [AuthState] is [AuthState.failed] with reason of failure,
  /// [LOADING] is the loading state of provider.

  Future<void> login({required String name, password}) async {
    state = const AuthState.authenticating();
    try {
      // fake authentication
      final result = await _authRepository.login(
        username: name,
        password: password,
      );
      state = AuthState.authenticated(name);
      _updateCredential(name, password);
      _storage.setAuthToken(result!);
    } catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }

  /// A function to retrieve and communicate [UserData] state if successful [FutureState] is
  /// [DATA] else [FutureState] is [FutureState.failed] with the reason of failure
  /// [LOADING] is the loading state of this loading state of this provider
  Future<void> getUser() async {
    final userState = _ref.watch(userStateProvider.notifier);
    state = AuthState.authenticating();
    try {
      final result = await _authRepository.getUser();
      _currentUser = result;
      userState.state = _currentUser;
      _updateAuthProfile();
    } catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }

  Future<void> logout() async {
    state = AuthState.authenticating();
    final userState = _ref.watch(userStateProvider.notifier);
    try {
      _storage.resetKey();
      userState.state = null;
      state = AuthState.unauthorized();
    } catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }
}
