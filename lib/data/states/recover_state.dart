import 'package:freezed_annotation/freezed_annotation.dart';

part 'recover_state.freezed.dart';

@freezed
class RecoveryState with _$RecoveryState {
  const factory RecoveryState.email() = FORGOT_PW_EMAIL;

  const factory RecoveryState.otp({
    required String otpSentMessage,
  }) = FORGOT_PW_OTP;

  const factory RecoveryState.resetPassword({
    required String otpVerifiedMessage,
  }) = FORGOT_PW_RESET_PASSWORD;

  const factory RecoveryState.loading({
    required String loading,
  }) = LOADING;

  const factory RecoveryState.failed({
    required String reason,
    required RecoveryState lastState,
  }) = FORGOT_PW_FAILED;

  const factory RecoveryState.success({
    String? success,
  }) = FORGOT_PW_SUCCESS;
}
