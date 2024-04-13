import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
}
