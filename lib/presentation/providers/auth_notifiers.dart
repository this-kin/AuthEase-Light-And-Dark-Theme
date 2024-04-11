import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/data/entities/user_model.dart';
import 'package:qoute_app/domain/repositories/base_auth_repository.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';
import 'package:qoute_app/presentation/providers/states/future_state.dart';

/// A Global [StateProvider] for retreiving [UserData] information
final userStateProvider = StateProvider<FutureState<UserData?>>((ref) {
  return FutureState.idle();
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  final Ref _ref;
  final BaseAuthRepository _authRepository;

  AuthStateNotifier({
    required Ref ref,
    required BaseAuthRepository authRepository,
  })  : _ref = ref,
        _authRepository = authRepository,
        super(AuthState.unauthorized()) {
    _initialize();
  }

  void _initialize() async {}

  /// A function to signup new user if successful [AuthState] is [AuthState.registered]
  /// else [AuthState] is [AuthState.failed] with reason of failure,
  /// [AuthState.authenticating] is the loading state of provider.

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

  /// A function to login new  if successful [AuthState] is [AuthState.authenticated]
  /// else [AuthState] is [AuthState.failed] with reason of failure,
  /// [AuthState.authenticating] is the loading state of provider.

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

  /// A function to retrieve and communicate [UserData] state if successful [FutureState] is
  /// [DATA] else [FutureState] is [FutureState.failed] with the reason of failure
  /// [LOADING] is the loading state of this loading state of this provider
  Future<void> getUser() async {
    final userState = _ref.watch(userStateProvider.notifier);
    userState.state = FutureState.loading();
    try {
      final result = await _authRepository.getUser();
      userState.state = FutureState.data(data: result);
    } catch (e) {
      userState.state = FutureState.failed(reason: e.toString());
    }
  }
}
