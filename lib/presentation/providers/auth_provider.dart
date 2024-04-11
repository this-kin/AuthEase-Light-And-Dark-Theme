import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/domain/networking/api_service.dart';
import 'package:qoute_app/domain/networking/dio_service.dart';
import 'package:qoute_app/data/repositories/auth_repository.dart';
import 'package:qoute_app/domain/local_storage/kv_storage.dart';
import 'package:qoute_app/domain/repositories/base_auth_repository.dart';
import 'package:qoute_app/presentation/providers/auth_notifiers.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';
import 'package:qoute_app/domain/networking/interceptors/logger_interceptor.dart';
import 'package:qoute_app/domain/networking/interceptors/refresh_token_interceptor.dart';

/// A  provider for regsitering the [AuthStateNotifier] for global usage
final authProvider = StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier(
    ref: ref,
    storage: ref.read(kvStorageProvider),
    authRepository: ref.read(authRepositoryProvider),
  );
});

/// A  provider for regsitering the [AuthRepository]
final authRepositoryProvider = Provider<BaseAuthRepository>((ref) {
  return AuthRepository(ref.read(_apiServiceProvider));
});

/// A  provider for regsitering the [KeyValueStorage]
final kvStorageProvider = Provider<KeyValueStorage>((ref) => KeyValueStorage());

/// A private provider for regsitering the [ApiService]
final _apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService(ref.read(_dioService));
});

/// A private provider for regsitering the [DioService]
final _dioService = Provider<DioService>(
  (ref) => DioService(
    client: ref.read(dioProvider),
    interceptors: [
      LoggingInterceptor(),
      RefreshTokenInterceptor(ref: ref, dioClient: ref.read(dioProvider))
    ],
  ),
);

final dioProvider = Provider<Dio>((ref) => Dio());
