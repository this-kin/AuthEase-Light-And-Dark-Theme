import 'package:flutter/foundation.dart';

/// A utility class that holds constants for our custom exception names.
/// This class has no constructor and all variables are `static`.
@immutable
class ExceptionConstants {
  const ExceptionConstants._();

  /// The name of the exception for an expired bearer token.
  static const String tokenExpiredException = 'TokenExpiredException';

  /// The name of the exception for a prematurely cancelled request.
  static const String cancelException = 'CancelException';

  /// The name of the exception for a failed connection attempt.
  static const String connectTimeoutException = 'ConnectTimeoutException';

  /// The name of the exception for failing to send a request.
  static const String sendTimeoutException = 'SendTimeoutException';

  /// The name of the exception for failing to receive a response.
  static const String receiveTimeoutException = 'ReceiveTimeoutException';

  /// The name of the exception for no internet connectivity.
  static const String socketException = 'SocketException';

  /// A better name for the socket exception.
  static const String fetchDataException = 'FetchDataException';

  /// The name of the exception for an incorrect parameter in a request/response.
  static const String formatException = 'FormatException';

  /// The name of the exception for an unknown type of failure.
  static const String unrecognizedException = 'UnrecognizedException';

  static const String httpException = "HttpException";

  static const String badCertificateException = "BadCertificateExpection";
  static const String connectionErrorException = "ConnectionErrorException";
}
