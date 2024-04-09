import 'dart:io';
import 'package:dio/dio.dart';
import 'package:qoute_app/core/typedef.dart';

abstract class ApiInterface {
  //
  // get data from endpoints
  Future<T> getData<T>({
    required endpoint,
    Json? params,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json json) result,
  });

  // post data to endpoints
  Future<T> postData<T>({
    required endpoint,
    Json? params,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json json) result,
  });

  // update data to endpoints
  Future<T> patchtData<T>({
    required endpoint,
    Json? params,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json json) result,
  });

  // delete data from endpoints
  Future<T> removeData<T>({
    required endpoint,
    Json? params,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json json) result,
  });

  // post data with image [formData]
  Future<T> postForm<T>({
    required endpoint,
    required Json params,
    required List<File> file,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json json) response,
  });

  // post data with one image [formData]
  Future<T> postWithImage<T>({
    required endpoint,
    required Json params,
    required File file,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json json) response,
  });

  // post data with image [formData]
  Future<T> upload<T>({
    required endpoint,
    required File? image,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json json) response,
  });

  // cancel http request
  void cancelToken({CancelToken? cancelToken});
}
