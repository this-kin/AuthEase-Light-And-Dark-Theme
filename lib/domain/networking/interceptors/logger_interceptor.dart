import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:qoute_app/core/typedef.dart';

class LoggingInterceptor extends Interceptor {
  /// This method intercepts an out-going request before it reaches the
  /// destination.
  ///
  /// [options] contains http request information and configuration.
  /// [handler] is used to forward, resolve, or reject requests.
  ///
  /// This method is used to log details of all out going requests, then pass
  /// it on after that. It may again be intercepted if there are any
  /// after it. If none, it is passed to [Dio].
  ///
  /// The [RequestInterceptorHandler] in each method controls the what will
  /// happen to the intercepted request. It has 3 possible options:
  ///
  /// - [handler.next]/[super.onRequest], if you want to forward the request.
  /// - [handler.resolve]/[super.onResponse], if you want to resolve the
  /// request with your custom [Response]. All ** request ** interceptors are ignored.
  /// - [handler.reject]/[super.onError], if you want to fail the request
  /// with your custom [DioException].
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final httpMethod = options.method.toUpperCase();
    final url = options.baseUrl + options.path;

    debugPrint('--> $httpMethod $url'); //GET www.example.com/mock_path/all

    debugPrint('\tHeaders:');
    options.headers.forEach((k, Object? v) => debugPrint('\t\t$k: $v'));

    if (options.queryParameters.isNotEmpty) {
      debugPrint('\tqueryParams:');
      options.queryParameters
          .forEach((k, Object? v) => debugPrint('\t\t$k: $v'));
    }

    if (options.data != null) {
      debugPrint('\tBody: ${options.data}');
    }

    debugPrint('--> END $httpMethod');

    return super.onRequest(options, handler);
  }

  /// This method intercepts an incoming response before it reaches Dio.
  ///
  /// [response] contains http [Response] info.
  /// [handler] is used to forward, resolve, or reject responses.
  ///
  /// This method is used to log all details of incoming responses, then pass
  /// it on after that. It may again be intercepted if there are any
  /// after it. If none, it is passed to [Dio].
  ///
  /// The [RequestInterceptorHandler] in each method controls the what will
  /// happen to the intercepted response. It has 3 possible options:
  ///
  /// - [handler.next]/[super.onRequest], if you want to forward the [Response].
  /// - [handler.resolve]/[super.onResponse], if you want to resolve the
  /// [Response] with your custom data. All ** response ** interceptors are ignored.
  /// - [handler.reject]/[super.onError], if you want to fail the response
  /// with your custom [DioException].
  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    debugPrint('<-- RESPONSE');
    debugPrint('\tStatus code:${response.statusCode}');
    debugPrint('\tResponse: ${response.data}');
    debugPrint('<-- END HTTP');
    return super.onResponse(response, handler);
  }

  /// This method intercepts any exceptions thrown by Dio, or passed from a
  /// previous interceptor.
  ///
  /// [dioError] contains error info when the request failed.
  /// [handler] is used to forward, resolve, or reject errors.
  ///
  /// This method is used to log all details of the error arising due to the
  /// failed request, then pass it on after that. It may again be intercepted
  /// if there are any after it. If none, it is passed to [Dio].
  ///
  /// ** The structure of response in case of errors is dependant on the API and
  /// may not always be the same. It might need changing according to your
  /// own API. **
  ///
  /// The [RequestInterceptorHandler] in each method controls the what will
  /// happen to the intercepted error. It has 3 possible options:
  ///
  /// - [handler.next]/[super.onRequest], if you want to forward the [Response].
  /// - [handler.resolve]/[super.onResponse], if you want to resolve the
  /// [Response] with your custom data. All ** error ** interceptors are ignored.
  /// - [handler.reject]/[super.onError], if you want to fail the response
  /// with your custom [DioException].
  @override
  void onError(
    DioException dioError,
    ErrorInterceptorHandler handler,
  ) {
    debugPrint('--> ERROR');
    debugPrint('\tMessage: ${dioError.error}'); // message
    final httpMethod = dioError.requestOptions.method.toUpperCase();
    final url = dioError.requestOptions.baseUrl + dioError.requestOptions.path;
    debugPrint('\tStatus code: ${dioError.response!.statusCode}');
    debugPrint('\tMETHOD: $httpMethod'); // GET
    debugPrint('\tURL: $url'); // URL
    debugPrint('\tMessage: ${dioError.message}'); // message
    if (dioError.response != null) {
      debugPrint(
          '\tStatus code: ${dioError.response!.statusCode}'); // STATUSCODE
      if (dioError.response!.statusCode != 200 ||
          dioError.response!.statusCode != 201) {
        final response = dioError.response!;
        final message = response.data; //API Dependant
        final code = response.statusCode.toString(); //API Dependant
        debugPrint('\tException: $code');
        debugPrint('\tMessage: $message');
        if (response.data != null) {
          //API Dependant
          final data = response.data as Json;
          if (data.isNotEmpty) {
            debugPrint('\tData: $data');
          }
        }
      } else if (dioError.response!.statusCode == 200 ||
          dioError.response!.statusCode == 201) {
        final response = dioError.response!;
        final message = response.data; //API Dependant
        final code = response.statusCode; //API Dependant
        debugPrint('\tException: $code');
        debugPrint('\tMessage: $message');
        if (response.data != null) {
          //API Dependant
          final data = response.data as Json;
          if (data.isNotEmpty) {
            debugPrint('\tData: $data');
          }
        }
      } else {
        debugPrint('Error Data: ${dioError.response!.data}');
      }
    } else if (dioError.error is SocketException) {
      const message = 'No internet connectivity';
      debugPrint('\tMessage: $message');
    } else {
      debugPrint('\tUnknown Error ${dioError.response!.data}');
    }
    debugPrint('<-- END ERROR');
    return super.onError(dioError, handler);
  }
}
