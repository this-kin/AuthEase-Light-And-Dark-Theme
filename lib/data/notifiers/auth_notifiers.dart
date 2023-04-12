import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/data/states/auth_state.dart';
import 'package:qoute_app/data/states/future_state.dart';

final setupStateProvider =
    StateProvider<FutureState<String>>((ref) => FutureState.idle());

final biometricStateProvider =
    StateProvider<FutureState<String>>((ref) => FutureState.idle());

final resendOtpStateProvider =
    StateProvider<FutureState<String>>((ref) => FutureState.idle());

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

  Future<void> verify({dynamic code}) async {
    state = const AuthState.authenticating();
    try {
      // fake authentication
      await Future.delayed(const Duration(seconds: 30));
      state = AuthState.authenticated();
    } on Exception catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }

  Future<void> resendOtp() async {
    final resendState = _ref.read(resendOtpStateProvider.state);
    resendState.state = FutureState.loading();
    try {
      // fake authentication
      await Future.delayed(const Duration(seconds: 30));
      resendState.state =
          FutureState.data(data: 'OTP code resend Successfully');
    } on Exception catch (e) {
      resendState.state = FutureState.failed(reason: e.toString());
    }
  }

  Future<void> addContact({dynamic contact}) async {
    state = const AuthState.authenticating();
    try {
      // fake authentication
      await Future.delayed(const Duration(seconds: 30));
      state = AuthState.authenticated();
    } on Exception catch (e) {
      state = AuthState.failed(reason: e.toString());
    }
  }

  Future<void> setPin({dynamic pin}) async {
    final setupState = _ref.read(setupStateProvider.state);
    setupState.state = FutureState.loading();
    try {
      // fake authentication
      await Future.delayed(const Duration(seconds: 30));
      setupState.state = FutureState.data(data: 'Set Pin Successfully');
    } on Exception catch (e) {
      setupState.state = FutureState.failed(reason: e.toString());
    }
  }

  Future<void> biometric() async {
    final biometricState = _ref.read(biometricStateProvider.state);
    biometricState.state = FutureState.loading();
    try {
      // fake authentication
      await Future.delayed(const Duration(seconds: 30));
      biometricState.state =
          FutureState.data(data: 'Set Biometric Successfully');
    } on Exception catch (e) {
      biometricState.state = FutureState.failed(reason: e.toString());
    }
  }
}
