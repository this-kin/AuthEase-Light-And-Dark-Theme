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
    required String query,
    required T Function(Json json) response,
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
    required Json param,
    required String query,
    required T Function(dynamic json) response,
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
  Future<T> updateData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  });

  Future<T> deleteData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  });
}
