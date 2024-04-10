import 'package:dio/dio.dart';
import 'package:qoute_app/core/typedef.dart';

class DioService {
  late final Dio _client;

  late final CancelToken _cancelToken;

  DioService({
    required Dio client,
    Iterable<Interceptor>? interceptors,
  })  : _client = client,
        _cancelToken = CancelToken() {
    if (interceptors != null) _client.interceptors.addAll(interceptors);
  }

  void cancelRequests({CancelToken? cancelToken}) async {
    if (cancelToken == null) {
      _cancelToken.cancel("Request cancalled");
    } else {
      cancelToken.cancel();
    }
  }

  Future<Json> get<T>({
    required endpoint,
    Json? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _client.get(
      endpoint,
      queryParameters: params,
      options: options,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return response.data;
  }

  Future<Json> post<T>({
    required endpoint,
    Json? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _client.post(
      endpoint,
      data: params,
      options: options,
      cancelToken: cancelToken ?? _cancelToken,
    );

    return response.data;
  }

  Future<Json> patch<T>({
    required endpoint,
    Json? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _client.patch(
      endpoint,
      queryParameters: params,
      options: options,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return response.data;
  }

  Future<Json> delete<T>({
    required endpoint,
    Json? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _client.delete(
      endpoint,
      queryParameters: params,
      options: options,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return response.data;
  }

  Future<Json> postFileData<T>({
    required endpoint,
    Json? params,
    Options? options,
    CancelToken? cancelToken,
    required FormData formData,
  }) async {
    final response = await _client.post(
      endpoint,
      queryParameters: params,
      options: options,
      data: formData,
      cancelToken: cancelToken ?? _cancelToken,
    );

    return response.data;
  }
}
