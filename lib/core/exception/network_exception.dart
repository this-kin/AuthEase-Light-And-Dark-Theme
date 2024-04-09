import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qoute_app/constants/exception_constants.dart';

part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException {
  const factory NetworkException.formatException({
    required String name,
    required String message,
  }) = _FormatException;

  const factory NetworkException.fetchDataException({
    required String name,
    required String message,
  }) = _FetchDataException;

  const factory NetworkException.apiException({
    required String name,
    required String message,
  }) = _ApiException;

  const factory NetworkException.tokenExpiredException({
    required String name,
    required String message,
  }) = _TokenExpiredException;

  const factory NetworkException.unrecognizedException({
    required String name,
    required String message,
  }) = _UnrecognizedException;

  const factory NetworkException.cancelException({
    required String name,
    required String message,
  }) = _CancelException;

  const factory NetworkException.connectTimeoutException({
    required String name,
    required String message,
  }) = _ConnectTimeoutException;

  const factory NetworkException.receiveTimeoutException({
    required String name,
    required String message,
  }) = _ReceiveTimeoutException;

  const factory NetworkException.sendTimeoutException({
    required String name,
    required String message,
  }) = _SendTimeoutException;

  const factory NetworkException.badCertificateException({
    required String name,
    required String message,
  }) = _BadCertificateException;

  const factory NetworkException.connectionErrorExecption({
    required String name,
    required String message,
  }) = _ConnectionErrorException;

  static NetworkException getDioException(Exception error) {
    debugPrint('from get exception ${error.toString()}');
    try {
      if (error is DioException) {
        switch (error.type) {
          case DioExceptionType.cancel:
            return const NetworkException.cancelException(
              name: ExceptionConstants.cancelException,
              message: 'Request cancelled prematurely',
            );
          case DioExceptionType.connectionTimeout:
            return const NetworkException.connectTimeoutException(
              name: ExceptionConstants.connectTimeoutException,
              message: 'Connection not established',
            );
          case DioExceptionType.sendTimeout:
            return const NetworkException.sendTimeoutException(
              name: ExceptionConstants.sendTimeoutException,
              message: 'Failed to send',
            );
          case DioExceptionType.receiveTimeout:
            return const NetworkException.receiveTimeoutException(
              name: ExceptionConstants.receiveTimeoutException,
              message: 'Failed to receive',
            );
          case DioExceptionType.badCertificate:
            return const NetworkException.badCertificateException(
              name: ExceptionConstants.badCertificateException,
              message: 'Bad Certificate',
            );
          case DioExceptionType.badResponse:
            return const NetworkException.badCertificateException(
              name: ExceptionConstants.badCertificateException,
              message: 'Bad Response',
            );
          case DioExceptionType.connectionError:
            return const NetworkException.badCertificateException(
              name: ExceptionConstants.badCertificateException,
              message: 'Connection Error',
            );
          case DioExceptionType.unknown:
            debugPrint("err  ${error.toString()}");
            debugPrint("err is ${error.message}");
            debugPrint("err response is  ${error.response?.data}");
            debugPrint("err status code is  ${error.response?.statusCode}");
            if (error.message!.contains(ExceptionConstants.socketException)) {
              return const NetworkException.fetchDataException(
                name: ExceptionConstants.fetchDataException,
                message: 'No internet connectivity',
              );
            } else if (error.message!
                .contains(ExceptionConstants.httpException)) {
              return const NetworkException.fetchDataException(
                name: ExceptionConstants.httpException,
                message: 'Connection closed while receiving data',
              );
            } else {
              final name = error.response?.data['message'];
              final message = error.response?.data['message'];
              switch (name) {
                case ExceptionConstants.tokenExpiredException:
                  return NetworkException.tokenExpiredException(
                      name: name, message: message);
                default:
                  return NetworkException.apiException(
                      name: name, message: message);
              }
            }
        }
      } else {
        return const NetworkException.unrecognizedException(
          name: ExceptionConstants.unrecognizedException,
          message: 'Error unrecognized',
        );
      }
    } on FormatException catch (e) {
      return NetworkException.formatException(
        name: ExceptionConstants.formatException,
        message: e.message,
      );
    } on Exception catch (_) {
      return const NetworkException.unrecognizedException(
        name: ExceptionConstants.unrecognizedException,
        message: 'Error unrecognized',
      );
    }
  }
}
