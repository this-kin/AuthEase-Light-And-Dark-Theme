import 'dart:io';
import 'package:dio/dio.dart';
import 'package:qoute_app/core/typedef.dart';
import 'package:qoute_app/domain/networking/dio_service.dart';
import 'package:qoute_app/domain/networking/api_interface.dart';
import 'package:qoute_app/core/exception/network_exception.dart';

class ApiService implements ApiInterface {
  late final DioService _dio;

  ApiService(DioService dioService) : _dio = dioService;

  @override
  void cancelToken({CancelToken? cancelToken}) {
    _dio.cancelRequests(cancelToken: cancelToken);
  }

  @override
  Future<T> getData<T>({
    required endpoint,
    Json? params,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json json) result,
  }) async {
    late Json json;
    try {
      final result = await _dio.get<Json>(
        endpoint: endpoint,
        params: params,
        cancelToken: cancelToken,
        options: Options(headers: <String, Object?>{
          'token': acceptToken,
        }),
      );
      json = result;
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
    try {
      return result(json);
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
  }

  @override
  Future<T> postData<T>({
    required endpoint,
    Json? params,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json json) result,
  }) async {
    late Json json;
    try {
      final result = await _dio.post<Json>(
        endpoint: endpoint,
        params: params,
        cancelToken: cancelToken,
        options: Options(headers: <String, Object?>{
          'token': acceptToken,
          // "Accept": "application/json"
        }),
      );
      json = result;
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
    try {
      return result(json);
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
  }

  @override
  Future<T> patchtData<T>(
      {required endpoint,
      Json? params,
      CancelToken? cancelToken,
      bool acceptToken = true,
      required T Function(Json json) result}) async {
    late Json json;
    try {
      final result = await _dio.patch<Json>(
        endpoint: endpoint,
        params: params,
        cancelToken: cancelToken,
        options: Options(headers: <String, Object?>{
          'token': acceptToken,
        }),
      );
      json = result;
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
    try {
      return result(json);
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
  }

  @override
  Future<T> removeData<T>(
      {required endpoint,
      Json? params,
      CancelToken? cancelToken,
      bool acceptToken = true,
      required T Function(Json json) result}) async {
    late Json json;
    try {
      final result = await _dio.delete<Json>(
        endpoint: endpoint,
        params: params,
        cancelToken: cancelToken,
        options: Options(headers: <String, Object?>{
          'token': acceptToken,
        }),
      );
      json = result;
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
    try {
      return result(json);
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
  }

  @override
  Future<T> postForm<T>({
    required endpoint,
    required Json? params,
    required List<File> file,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json json) response,
  }) async {
    late Json json;
    try {
      final result = await _dio.postFileData<Json>(
        endpoint: endpoint,
        params: params,
        formData: FormData.fromMap({
          'image': [
            for (var i in file)
              {
                await MultipartFile.fromFile(i.path),
              }.toList()
          ],
        }),
        cancelToken: cancelToken,
        options: Options(headers: <String, Object?>{
          'token': acceptToken,
          "Accept": "application/json"
        }),
      );

      json = result;
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
    try {
      return response(json);
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
  }

  @override
  Future<T> upload<T>({
    required endpoint,
    required File? image,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json json) response,
  }) async {
    late Json json;
    try {
      final result = await _dio.postFileData<Json>(
        endpoint: endpoint,
        // params: ,
        formData: FormData.fromMap(
            {'profileImg': await MultipartFile.fromFile(image!.path)}),
        cancelToken: cancelToken,
        options: Options(headers: <String, Object?>{
          'token': acceptToken,
          "Accept": "application/json"
        }),
      );

      json = result;
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
    try {
      return response(json);
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
  }

  @override
  Future<T> postWithImage<T>(
      {required endpoint,
      required Json params,
      required File file,
      CancelToken? cancelToken,
      bool acceptToken = true,
      required T Function(Json json) response}) async {
    late Json json;
    try {
      final result = await _dio.postFileData<Json>(
        endpoint: endpoint,
        params: params,
        formData: FormData.fromMap({
          'image': await MultipartFile.fromFile(file.path),
        }),
        cancelToken: cancelToken,
        options: Options(headers: <String, Object?>{
          'token': acceptToken,
          "Accept": "application/json"
        }),
      );
      json = result;
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
    try {
      return response(json);
    } on Exception catch (e) {
      throw NetworkException.getDioException(e);
    }
  }
}
