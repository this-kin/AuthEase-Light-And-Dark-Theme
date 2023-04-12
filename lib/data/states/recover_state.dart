import 'package:freezed_annotation/freezed_annotation.dart';

part 'recover_state.freezed.dart';

@freezed
class RecoveryState with _$RecoveryState {
  const factory RecoveryState.idle() = RESET_IDLE;
  const factory RecoveryState.email() = REST_EMAIL;

  const factory RecoveryState.otp({
    required String otpSentMessage,
  }) = RESET_OTP;

  const factory RecoveryState.resetPassword({
    required String otpVerifiedMessage,
  }) = RESET_PASSWORD;

  const factory RecoveryState.loading({
    required String loading,
  }) = RESET_LOADING;

  const factory RecoveryState.failed({
    required String reason,
    required RecoveryState lastState,
  }) = RESET_FAILED;

  const factory RecoveryState.success({
    String? success,
  }) = RESET_SUCCESS;
}
