import 'dart:io';
import 'package:dio/dio.dart';
import 'package:qoute_app/core/typedef.dart';

/// A base class containing methods for basic API functionality.
///
/// Should be implemented by any service class that wishes to interact
/// with an API.
abstract class ApiInterface {
  /// Abstract const constructor. This constructor enables subclasses
  /// to provide const constructors so that they can be used in
  /// const expressions.

  /// Base method for requesting collection of data from the [endpoint].
  ///
  /// The response is **deserialized** into a List of model objects of type [T],
  /// using the [converter] callback.
  ///
  /// [params] holds any query parameters for the request.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely. If null,
  /// the **default** [cancelToken] inside [DioService] is used.
  ///
  /// [requiresAuthToken] is used to decide if a token will be inserted
  /// in the **headers** of the request using an [ApiInterceptor].
  Future<T> getData<T>({
    required endpoint,
    Json? params,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json? json) result,
  });

  /// Base method for inserting [data] at the [endpoint].
  ///
  /// The [data] contains body for the request.
  ///
  /// The response is deserialized into an object of type [T],
  /// using the [converter] callback.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely. If null,
  /// the **default** [cancelToken] inside [DioService] is used.
  ///
  /// [acceptToken] is used to decide if a token will be inserted
  /// in the **headers** of the request using an [ApiInterceptor]
  Future<T> postData<T>({
    required endpoint,
    Json? params,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json? json) result,
  });

  /// Base method for updating [data] at the [endpoint].
  ///
  /// The response is deserialized into an object of type [T],
  /// using the [converter] callback.
  ///
  /// The [data] contains body for the request.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely. If null,
  /// the **default** [cancelToken] inside [DioService] is used.
  ///
  /// [acceptToken] is used to decide if a token will be inserted
  /// in the **headers** of the request using an [ApiInterceptor]
  Future<T> patchtData<T>({
    required endpoint,
    Json? params,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json? json) result,
  });

  /// Base method for deleting [data] at the [endpoint].
  ///
  /// The response is deserialized into an object of type [T],
  /// using the [converter] callback.
  ///
  /// The [data] contains body for the request.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely. If null,
  /// the **default** [cancelToken] inside [DioService] is used.
  ///
  /// [acceptToken] is used to decide if a token will be inserted
  /// in the **headers** of the request using an [ApiInterceptor]
  Future<T> removeData<T>({
    required endpoint,
    Json? params,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json? json) result,
  });

  /// Base method for inserting [data] with images at the [endpoint].
  ///
  /// The [data] contains body for the request.
  ///
  /// The response is deserialized into an object of type [T],
  /// using the [converter] callback.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely. If null,
  /// the **default** [cancelToken] inside [DioService] is used.
  ///
  /// [acceptToken] is used to decide if a token will be inserted
  Future<T> postForm<T>({
    required endpoint,
    required Json params,
    required List<File> file,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json? json) response,
  });

  /// Base method for inserting [data] with a single image at the [endpoint].
  ///
  /// The [data] contains body for the request.
  ///
  /// The response is deserialized into an object of type [T],
  /// using the [converter] callback.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely. If null,
  /// the **default** [cancelToken] inside [DioService] is used.
  ///
  /// [acceptToken] is used to decide if a token will be inserted
  Future<T> postWithImage<T>({
    required endpoint,
    required Json params,
    required File file,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json? json) response,
  });

  /// Base method for inserting [image] at the [endpoint].
  ///
  /// The [data] contains body for the request.
  ///
  /// The response is deserialized into an object of type [T],
  /// using the [converter] callback.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely. If null,
  /// the **default** [cancelToken] inside [DioService] is used.
  ///
  /// [acceptToken] is used to decide if a token will be inserted
  Future<T> upload<T>({
    required endpoint,
    required File? image,
    CancelToken? cancelToken,
    bool acceptToken = true,
    required T Function(Json? json) response,
  });

  /// Base method for cancelling requests pre-maturely
  /// using the [cancelToken].
  ///
  /// If null, the **default** [cancelToken] inside [DioService] is used.
  void cancelToken({CancelToken? cancelToken});
}
