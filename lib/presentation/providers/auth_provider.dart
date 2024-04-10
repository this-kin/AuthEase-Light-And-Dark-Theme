import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/data/repositories/auth_repository.dart';
import 'package:qoute_app/domain/interceptors/logger_interceptor.dart';
import 'package:qoute_app/domain/networking/api_service.dart';
import 'package:qoute_app/domain/networking/dio_service.dart';
import 'package:qoute_app/domain/repositories/base_auth_repository.dart';
import 'package:qoute_app/presentation/providers/auth_notifiers.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';

final authProvider = StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier(
      ref: ref, authRepository: ref.read(authRepositoryProvider));
});

final authRepositoryProvider = Provider<BaseAuthRepository>((ref) {
  return AuthRepository(ref.read(_apiServiceProvider));
});

final _apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService(ref.read(_dioService));
});

final _dioService = Provider<DioService>(
  (ref) => DioService(client: Dio(), interceptors: [
    LoggingInterceptor(),
  ]),
);
