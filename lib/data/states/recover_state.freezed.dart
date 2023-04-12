// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecoveryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() email,
    required TResult Function(String otpSentMessage) otp,
    required TResult Function(String otpVerifiedMessage) resetPassword,
    required TResult Function(String loading) loading,
    required TResult Function(String reason, RecoveryState lastState) failed,
    required TResult Function(String? success) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? email,
    TResult? Function(String otpSentMessage)? otp,
    TResult? Function(String otpVerifiedMessage)? resetPassword,
    TResult? Function(String loading)? loading,
    TResult? Function(String reason, RecoveryState lastState)? failed,
    TResult? Function(String? success)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? email,
    TResult Function(String otpSentMessage)? otp,
    TResult Function(String otpVerifiedMessage)? resetPassword,
    TResult Function(String loading)? loading,
    TResult Function(String reason, RecoveryState lastState)? failed,
    TResult Function(String? success)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RESET_IDLE value) idle,
    required TResult Function(REST_EMAIL value) email,
    required TResult Function(RESET_OTP value) otp,
    required TResult Function(RESET_PASSWORD value) resetPassword,
    required TResult Function(RESET_LOADING value) loading,
    required TResult Function(RESET_FAILED value) failed,
    required TResult Function(RESET_SUCCESS value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RESET_IDLE value)? idle,
    TResult? Function(REST_EMAIL value)? email,
    TResult? Function(RESET_OTP value)? otp,
    TResult? Function(RESET_PASSWORD value)? resetPassword,
    TResult? Function(RESET_LOADING value)? loading,
    TResult? Function(RESET_FAILED value)? failed,
    TResult? Function(RESET_SUCCESS value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RESET_IDLE value)? idle,
    TResult Function(REST_EMAIL value)? email,
    TResult Function(RESET_OTP value)? otp,
    TResult Function(RESET_PASSWORD value)? resetPassword,
    TResult Function(RESET_LOADING value)? loading,
    TResult Function(RESET_FAILED value)? failed,
    TResult Function(RESET_SUCCESS value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryStateCopyWith<$Res> {
  factory $RecoveryStateCopyWith(
          RecoveryState value, $Res Function(RecoveryState) then) =
      _$RecoveryStateCopyWithImpl<$Res, RecoveryState>;
}

/// @nodoc
class _$RecoveryStateCopyWithImpl<$Res, $Val extends RecoveryState>
    implements $RecoveryStateCopyWith<$Res> {
  _$RecoveryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RESET_IDLECopyWith<$Res> {
  factory _$$RESET_IDLECopyWith(
          _$RESET_IDLE value, $Res Function(_$RESET_IDLE) then) =
      __$$RESET_IDLECopyWithImpl<$Res>;
}

/// @nodoc
class __$$RESET_IDLECopyWithImpl<$Res>
    extends _$RecoveryStateCopyWithImpl<$Res, _$RESET_IDLE>
    implements _$$RESET_IDLECopyWith<$Res> {
  __$$RESET_IDLECopyWithImpl(
      _$RESET_IDLE _value, $Res Function(_$RESET_IDLE) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RESET_IDLE implements RESET_IDLE {
  const _$RESET_IDLE();

  @override
  String toString() {
    return 'RecoveryState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RESET_IDLE);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() email,
    required TResult Function(String otpSentMessage) otp,
    required TResult Function(String otpVerifiedMessage) resetPassword,
    required TResult Function(String loading) loading,
    required TResult Function(String reason, RecoveryState lastState) failed,
    required TResult Function(String? success) success,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? email,
    TResult? Function(String otpSentMessage)? otp,
    TResult? Function(String otpVerifiedMessage)? resetPassword,
    TResult? Function(String loading)? loading,
    TResult? Function(String reason, RecoveryState lastState)? failed,
    TResult? Function(String? success)? success,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? email,
    TResult Function(String otpSentMessage)? otp,
    TResult Function(String otpVerifiedMessage)? resetPassword,
    TResult Function(String loading)? loading,
    TResult Function(String reason, RecoveryState lastState)? failed,
    TResult Function(String? success)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RESET_IDLE value) idle,
    required TResult Function(REST_EMAIL value) email,
    required TResult Function(RESET_OTP value) otp,
    required TResult Function(RESET_PASSWORD value) resetPassword,
    required TResult Function(RESET_LOADING value) loading,
    required TResult Function(RESET_FAILED value) failed,
    required TResult Function(RESET_SUCCESS value) success,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RESET_IDLE value)? idle,
    TResult? Function(REST_EMAIL value)? email,
    TResult? Function(RESET_OTP value)? otp,
    TResult? Function(RESET_PASSWORD value)? resetPassword,
    TResult? Function(RESET_LOADING value)? loading,
    TResult? Function(RESET_FAILED value)? failed,
    TResult? Function(RESET_SUCCESS value)? success,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RESET_IDLE value)? idle,
    TResult Function(REST_EMAIL value)? email,
    TResult Function(RESET_OTP value)? otp,
    TResult Function(RESET_PASSWORD value)? resetPassword,
    TResult Function(RESET_LOADING value)? loading,
    TResult Function(RESET_FAILED value)? failed,
    TResult Function(RESET_SUCCESS value)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class RESET_IDLE implements RecoveryState {
  const factory RESET_IDLE() = _$RESET_IDLE;
}

/// @nodoc
abstract class _$$REST_EMAILCopyWith<$Res> {
  factory _$$REST_EMAILCopyWith(
          _$REST_EMAIL value, $Res Function(_$REST_EMAIL) then) =
      __$$REST_EMAILCopyWithImpl<$Res>;
}

/// @nodoc
class __$$REST_EMAILCopyWithImpl<$Res>
    extends _$RecoveryStateCopyWithImpl<$Res, _$REST_EMAIL>
    implements _$$REST_EMAILCopyWith<$Res> {
  __$$REST_EMAILCopyWithImpl(
      _$REST_EMAIL _value, $Res Function(_$REST_EMAIL) _then)
      : super(_value, _then);
}

/// @nodoc

class _$REST_EMAIL implements REST_EMAIL {
  const _$REST_EMAIL();

  @override
  String toString() {
    return 'RecoveryState.email()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$REST_EMAIL);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() email,
    required TResult Function(String otpSentMessage) otp,
    required TResult Function(String otpVerifiedMessage) resetPassword,
    required TResult Function(String loading) loading,
    required TResult Function(String reason, RecoveryState lastState) failed,
    required TResult Function(String? success) success,
  }) {
    return email();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? email,
    TResult? Function(String otpSentMessage)? otp,
    TResult? Function(String otpVerifiedMessage)? resetPassword,
    TResult? Function(String loading)? loading,
    TResult? Function(String reason, RecoveryState lastState)? failed,
    TResult? Function(String? success)? success,
  }) {
    return email?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? email,
    TResult Function(String otpSentMessage)? otp,
    TResult Function(String otpVerifiedMessage)? resetPassword,
    TResult Function(String loading)? loading,
    TResult Function(String reason, RecoveryState lastState)? failed,
    TResult Function(String? success)? success,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RESET_IDLE value) idle,
    required TResult Function(REST_EMAIL value) email,
    required TResult Function(RESET_OTP value) otp,
    required TResult Function(RESET_PASSWORD value) resetPassword,
    required TResult Function(RESET_LOADING value) loading,
    required TResult Function(RESET_FAILED value) failed,
    required TResult Function(RESET_SUCCESS value) success,
  }) {
    return email(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RESET_IDLE value)? idle,
    TResult? Function(REST_EMAIL value)? email,
    TResult? Function(RESET_OTP value)? otp,
    TResult? Function(RESET_PASSWORD value)? resetPassword,
    TResult? Function(RESET_LOADING value)? loading,
    TResult? Function(RESET_FAILED value)? failed,
    TResult? Function(RESET_SUCCESS value)? success,
  }) {
    return email?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RESET_IDLE value)? idle,
    TResult Function(REST_EMAIL value)? email,
    TResult Function(RESET_OTP value)? otp,
    TResult Function(RESET_PASSWORD value)? resetPassword,
    TResult Function(RESET_LOADING value)? loading,
    TResult Function(RESET_FAILED value)? failed,
    TResult Function(RESET_SUCCESS value)? success,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(this);
    }
    return orElse();
  }
}

abstract class REST_EMAIL implements RecoveryState {
  const factory REST_EMAIL() = _$REST_EMAIL;
}

/// @nodoc
abstract class _$$RESET_OTPCopyWith<$Res> {
  factory _$$RESET_OTPCopyWith(
          _$RESET_OTP value, $Res Function(_$RESET_OTP) then) =
      __$$RESET_OTPCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpSentMessage});
}

/// @nodoc
class __$$RESET_OTPCopyWithImpl<$Res>
    extends _$RecoveryStateCopyWithImpl<$Res, _$RESET_OTP>
    implements _$$RESET_OTPCopyWith<$Res> {
  __$$RESET_OTPCopyWithImpl(
      _$RESET_OTP _value, $Res Function(_$RESET_OTP) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpSentMessage = null,
  }) {
    return _then(_$RESET_OTP(
      otpSentMessage: null == otpSentMessage
          ? _value.otpSentMessage
          : otpSentMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RESET_OTP implements RESET_OTP {
  const _$RESET_OTP({required this.otpSentMessage});

  @override
  final String otpSentMessage;

  @override
  String toString() {
    return 'RecoveryState.otp(otpSentMessage: $otpSentMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RESET_OTP &&
            (identical(other.otpSentMessage, otpSentMessage) ||
                other.otpSentMessage == otpSentMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpSentMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RESET_OTPCopyWith<_$RESET_OTP> get copyWith =>
      __$$RESET_OTPCopyWithImpl<_$RESET_OTP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() email,
    required TResult Function(String otpSentMessage) otp,
    required TResult Function(String otpVerifiedMessage) resetPassword,
    required TResult Function(String loading) loading,
    required TResult Function(String reason, RecoveryState lastState) failed,
    required TResult Function(String? success) success,
  }) {
    return otp(otpSentMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? email,
    TResult? Function(String otpSentMessage)? otp,
    TResult? Function(String otpVerifiedMessage)? resetPassword,
    TResult? Function(String loading)? loading,
    TResult? Function(String reason, RecoveryState lastState)? failed,
    TResult? Function(String? success)? success,
  }) {
    return otp?.call(otpSentMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? email,
    TResult Function(String otpSentMessage)? otp,
    TResult Function(String otpVerifiedMessage)? resetPassword,
    TResult Function(String loading)? loading,
    TResult Function(String reason, RecoveryState lastState)? failed,
    TResult Function(String? success)? success,
    required TResult orElse(),
  }) {
    if (otp != null) {
      return otp(otpSentMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RESET_IDLE value) idle,
    required TResult Function(REST_EMAIL value) email,
    required TResult Function(RESET_OTP value) otp,
    required TResult Function(RESET_PASSWORD value) resetPassword,
    required TResult Function(RESET_LOADING value) loading,
    required TResult Function(RESET_FAILED value) failed,
    required TResult Function(RESET_SUCCESS value) success,
  }) {
    return otp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RESET_IDLE value)? idle,
    TResult? Function(REST_EMAIL value)? email,
    TResult? Function(RESET_OTP value)? otp,
    TResult? Function(RESET_PASSWORD value)? resetPassword,
    TResult? Function(RESET_LOADING value)? loading,
    TResult? Function(RESET_FAILED value)? failed,
    TResult? Function(RESET_SUCCESS value)? success,
  }) {
    return otp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RESET_IDLE value)? idle,
    TResult Function(REST_EMAIL value)? email,
    TResult Function(RESET_OTP value)? otp,
    TResult Function(RESET_PASSWORD value)? resetPassword,
    TResult Function(RESET_LOADING value)? loading,
    TResult Function(RESET_FAILED value)? failed,
    TResult Function(RESET_SUCCESS value)? success,
    required TResult orElse(),
  }) {
    if (otp != null) {
      return otp(this);
    }
    return orElse();
  }
}

abstract class RESET_OTP implements RecoveryState {
  const factory RESET_OTP({required final String otpSentMessage}) = _$RESET_OTP;

  String get otpSentMessage;
  @JsonKey(ignore: true)
  _$$RESET_OTPCopyWith<_$RESET_OTP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RESET_PASSWORDCopyWith<$Res> {
  factory _$$RESET_PASSWORDCopyWith(
          _$RESET_PASSWORD value, $Res Function(_$RESET_PASSWORD) then) =
      __$$RESET_PASSWORDCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpVerifiedMessage});
}

/// @nodoc
class __$$RESET_PASSWORDCopyWithImpl<$Res>
    extends _$RecoveryStateCopyWithImpl<$Res, _$RESET_PASSWORD>
    implements _$$RESET_PASSWORDCopyWith<$Res> {
  __$$RESET_PASSWORDCopyWithImpl(
      _$RESET_PASSWORD _value, $Res Function(_$RESET_PASSWORD) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpVerifiedMessage = null,
  }) {
    return _then(_$RESET_PASSWORD(
      otpVerifiedMessage: null == otpVerifiedMessage
          ? _value.otpVerifiedMessage
          : otpVerifiedMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RESET_PASSWORD implements RESET_PASSWORD {
  const _$RESET_PASSWORD({required this.otpVerifiedMessage});

  @override
  final String otpVerifiedMessage;

  @override
  String toString() {
    return 'RecoveryState.resetPassword(otpVerifiedMessage: $otpVerifiedMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RESET_PASSWORD &&
            (identical(other.otpVerifiedMessage, otpVerifiedMessage) ||
                other.otpVerifiedMessage == otpVerifiedMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpVerifiedMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RESET_PASSWORDCopyWith<_$RESET_PASSWORD> get copyWith =>
      __$$RESET_PASSWORDCopyWithImpl<_$RESET_PASSWORD>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() email,
    required TResult Function(String otpSentMessage) otp,
    required TResult Function(String otpVerifiedMessage) resetPassword,
    required TResult Function(String loading) loading,
    required TResult Function(String reason, RecoveryState lastState) failed,
    required TResult Function(String? success) success,
  }) {
    return resetPassword(otpVerifiedMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? email,
    TResult? Function(String otpSentMessage)? otp,
    TResult? Function(String otpVerifiedMessage)? resetPassword,
    TResult? Function(String loading)? loading,
    TResult? Function(String reason, RecoveryState lastState)? failed,
    TResult? Function(String? success)? success,
  }) {
    return resetPassword?.call(otpVerifiedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? email,
    TResult Function(String otpSentMessage)? otp,
    TResult Function(String otpVerifiedMessage)? resetPassword,
    TResult Function(String loading)? loading,
    TResult Function(String reason, RecoveryState lastState)? failed,
    TResult Function(String? success)? success,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(otpVerifiedMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RESET_IDLE value) idle,
    required TResult Function(REST_EMAIL value) email,
    required TResult Function(RESET_OTP value) otp,
    required TResult Function(RESET_PASSWORD value) resetPassword,
    required TResult Function(RESET_LOADING value) loading,
    required TResult Function(RESET_FAILED value) failed,
    required TResult Function(RESET_SUCCESS value) success,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RESET_IDLE value)? idle,
    TResult? Function(REST_EMAIL value)? email,
    TResult? Function(RESET_OTP value)? otp,
    TResult? Function(RESET_PASSWORD value)? resetPassword,
    TResult? Function(RESET_LOADING value)? loading,
    TResult? Function(RESET_FAILED value)? failed,
    TResult? Function(RESET_SUCCESS value)? success,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RESET_IDLE value)? idle,
    TResult Function(REST_EMAIL value)? email,
    TResult Function(RESET_OTP value)? otp,
    TResult Function(RESET_PASSWORD value)? resetPassword,
    TResult Function(RESET_LOADING value)? loading,
    TResult Function(RESET_FAILED value)? failed,
    TResult Function(RESET_SUCCESS value)? success,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class RESET_PASSWORD implements RecoveryState {
  const factory RESET_PASSWORD({required final String otpVerifiedMessage}) =
      _$RESET_PASSWORD;

  String get otpVerifiedMessage;
  @JsonKey(ignore: true)
  _$$RESET_PASSWORDCopyWith<_$RESET_PASSWORD> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RESET_LOADINGCopyWith<$Res> {
  factory _$$RESET_LOADINGCopyWith(
          _$RESET_LOADING value, $Res Function(_$RESET_LOADING) then) =
      __$$RESET_LOADINGCopyWithImpl<$Res>;
  @useResult
  $Res call({String loading});
}

/// @nodoc
class __$$RESET_LOADINGCopyWithImpl<$Res>
    extends _$RecoveryStateCopyWithImpl<$Res, _$RESET_LOADING>
    implements _$$RESET_LOADINGCopyWith<$Res> {
  __$$RESET_LOADINGCopyWithImpl(
      _$RESET_LOADING _value, $Res Function(_$RESET_LOADING) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
  }) {
    return _then(_$RESET_LOADING(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RESET_LOADING implements RESET_LOADING {
  const _$RESET_LOADING({required this.loading});

  @override
  final String loading;

  @override
  String toString() {
    return 'RecoveryState.loading(loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RESET_LOADING &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RESET_LOADINGCopyWith<_$RESET_LOADING> get copyWith =>
      __$$RESET_LOADINGCopyWithImpl<_$RESET_LOADING>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() email,
    required TResult Function(String otpSentMessage) otp,
    required TResult Function(String otpVerifiedMessage) resetPassword,
    required TResult Function(String loading) loading,
    required TResult Function(String reason, RecoveryState lastState) failed,
    required TResult Function(String? success) success,
  }) {
    return loading(this.loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? email,
    TResult? Function(String otpSentMessage)? otp,
    TResult? Function(String otpVerifiedMessage)? resetPassword,
    TResult? Function(String loading)? loading,
    TResult? Function(String reason, RecoveryState lastState)? failed,
    TResult? Function(String? success)? success,
  }) {
    return loading?.call(this.loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? email,
    TResult Function(String otpSentMessage)? otp,
    TResult Function(String otpVerifiedMessage)? resetPassword,
    TResult Function(String loading)? loading,
    TResult Function(String reason, RecoveryState lastState)? failed,
    TResult Function(String? success)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RESET_IDLE value) idle,
    required TResult Function(REST_EMAIL value) email,
    required TResult Function(RESET_OTP value) otp,
    required TResult Function(RESET_PASSWORD value) resetPassword,
    required TResult Function(RESET_LOADING value) loading,
    required TResult Function(RESET_FAILED value) failed,
    required TResult Function(RESET_SUCCESS value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RESET_IDLE value)? idle,
    TResult? Function(REST_EMAIL value)? email,
    TResult? Function(RESET_OTP value)? otp,
    TResult? Function(RESET_PASSWORD value)? resetPassword,
    TResult? Function(RESET_LOADING value)? loading,
    TResult? Function(RESET_FAILED value)? failed,
    TResult? Function(RESET_SUCCESS value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RESET_IDLE value)? idle,
    TResult Function(REST_EMAIL value)? email,
    TResult Function(RESET_OTP value)? otp,
    TResult Function(RESET_PASSWORD value)? resetPassword,
    TResult Function(RESET_LOADING value)? loading,
    TResult Function(RESET_FAILED value)? failed,
    TResult Function(RESET_SUCCESS value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RESET_LOADING implements RecoveryState {
  const factory RESET_LOADING({required final String loading}) =
      _$RESET_LOADING;

  String get loading;
  @JsonKey(ignore: true)
  _$$RESET_LOADINGCopyWith<_$RESET_LOADING> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RESET_FAILEDCopyWith<$Res> {
  factory _$$RESET_FAILEDCopyWith(
          _$RESET_FAILED value, $Res Function(_$RESET_FAILED) then) =
      __$$RESET_FAILEDCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason, RecoveryState lastState});

  $RecoveryStateCopyWith<$Res> get lastState;
}

/// @nodoc
class __$$RESET_FAILEDCopyWithImpl<$Res>
    extends _$RecoveryStateCopyWithImpl<$Res, _$RESET_FAILED>
    implements _$$RESET_FAILEDCopyWith<$Res> {
  __$$RESET_FAILEDCopyWithImpl(
      _$RESET_FAILED _value, $Res Function(_$RESET_FAILED) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? lastState = null,
  }) {
    return _then(_$RESET_FAILED(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      lastState: null == lastState
          ? _value.lastState
          : lastState // ignore: cast_nullable_to_non_nullable
              as RecoveryState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RecoveryStateCopyWith<$Res> get lastState {
    return $RecoveryStateCopyWith<$Res>(_value.lastState, (value) {
      return _then(_value.copyWith(lastState: value));
    });
  }
}

/// @nodoc

class _$RESET_FAILED implements RESET_FAILED {
  const _$RESET_FAILED({required this.reason, required this.lastState});

  @override
  final String reason;
  @override
  final RecoveryState lastState;

  @override
  String toString() {
    return 'RecoveryState.failed(reason: $reason, lastState: $lastState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RESET_FAILED &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.lastState, lastState) ||
                other.lastState == lastState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason, lastState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RESET_FAILEDCopyWith<_$RESET_FAILED> get copyWith =>
      __$$RESET_FAILEDCopyWithImpl<_$RESET_FAILED>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() email,
    required TResult Function(String otpSentMessage) otp,
    required TResult Function(String otpVerifiedMessage) resetPassword,
    required TResult Function(String loading) loading,
    required TResult Function(String reason, RecoveryState lastState) failed,
    required TResult Function(String? success) success,
  }) {
    return failed(reason, lastState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? email,
    TResult? Function(String otpSentMessage)? otp,
    TResult? Function(String otpVerifiedMessage)? resetPassword,
    TResult? Function(String loading)? loading,
    TResult? Function(String reason, RecoveryState lastState)? failed,
    TResult? Function(String? success)? success,
  }) {
    return failed?.call(reason, lastState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? email,
    TResult Function(String otpSentMessage)? otp,
    TResult Function(String otpVerifiedMessage)? resetPassword,
    TResult Function(String loading)? loading,
    TResult Function(String reason, RecoveryState lastState)? failed,
    TResult Function(String? success)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(reason, lastState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RESET_IDLE value) idle,
    required TResult Function(REST_EMAIL value) email,
    required TResult Function(RESET_OTP value) otp,
    required TResult Function(RESET_PASSWORD value) resetPassword,
    required TResult Function(RESET_LOADING value) loading,
    required TResult Function(RESET_FAILED value) failed,
    required TResult Function(RESET_SUCCESS value) success,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RESET_IDLE value)? idle,
    TResult? Function(REST_EMAIL value)? email,
    TResult? Function(RESET_OTP value)? otp,
    TResult? Function(RESET_PASSWORD value)? resetPassword,
    TResult? Function(RESET_LOADING value)? loading,
    TResult? Function(RESET_FAILED value)? failed,
    TResult? Function(RESET_SUCCESS value)? success,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RESET_IDLE value)? idle,
    TResult Function(REST_EMAIL value)? email,
    TResult Function(RESET_OTP value)? otp,
    TResult Function(RESET_PASSWORD value)? resetPassword,
    TResult Function(RESET_LOADING value)? loading,
    TResult Function(RESET_FAILED value)? failed,
    TResult Function(RESET_SUCCESS value)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class RESET_FAILED implements RecoveryState {
  const factory RESET_FAILED(
      {required final String reason,
      required final RecoveryState lastState}) = _$RESET_FAILED;

  String get reason;
  RecoveryState get lastState;
  @JsonKey(ignore: true)
  _$$RESET_FAILEDCopyWith<_$RESET_FAILED> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RESET_SUCCESSCopyWith<$Res> {
  factory _$$RESET_SUCCESSCopyWith(
          _$RESET_SUCCESS value, $Res Function(_$RESET_SUCCESS) then) =
      __$$RESET_SUCCESSCopyWithImpl<$Res>;
  @useResult
  $Res call({String? success});
}

/// @nodoc
class __$$RESET_SUCCESSCopyWithImpl<$Res>
    extends _$RecoveryStateCopyWithImpl<$Res, _$RESET_SUCCESS>
    implements _$$RESET_SUCCESSCopyWith<$Res> {
  __$$RESET_SUCCESSCopyWithImpl(
      _$RESET_SUCCESS _value, $Res Function(_$RESET_SUCCESS) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_$RESET_SUCCESS(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RESET_SUCCESS implements RESET_SUCCESS {
  const _$RESET_SUCCESS({this.success});

  @override
  final String? success;

  @override
  String toString() {
    return 'RecoveryState.success(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RESET_SUCCESS &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RESET_SUCCESSCopyWith<_$RESET_SUCCESS> get copyWith =>
      __$$RESET_SUCCESSCopyWithImpl<_$RESET_SUCCESS>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() email,
    required TResult Function(String otpSentMessage) otp,
    required TResult Function(String otpVerifiedMessage) resetPassword,
    required TResult Function(String loading) loading,
    required TResult Function(String reason, RecoveryState lastState) failed,
    required TResult Function(String? success) success,
  }) {
    return success(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? email,
    TResult? Function(String otpSentMessage)? otp,
    TResult? Function(String otpVerifiedMessage)? resetPassword,
    TResult? Function(String loading)? loading,
    TResult? Function(String reason, RecoveryState lastState)? failed,
    TResult? Function(String? success)? success,
  }) {
    return success?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? email,
    TResult Function(String otpSentMessage)? otp,
    TResult Function(String otpVerifiedMessage)? resetPassword,
    TResult Function(String loading)? loading,
    TResult Function(String reason, RecoveryState lastState)? failed,
    TResult Function(String? success)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RESET_IDLE value) idle,
    required TResult Function(REST_EMAIL value) email,
    required TResult Function(RESET_OTP value) otp,
    required TResult Function(RESET_PASSWORD value) resetPassword,
    required TResult Function(RESET_LOADING value) loading,
    required TResult Function(RESET_FAILED value) failed,
    required TResult Function(RESET_SUCCESS value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RESET_IDLE value)? idle,
    TResult? Function(REST_EMAIL value)? email,
    TResult? Function(RESET_OTP value)? otp,
    TResult? Function(RESET_PASSWORD value)? resetPassword,
    TResult? Function(RESET_LOADING value)? loading,
    TResult? Function(RESET_FAILED value)? failed,
    TResult? Function(RESET_SUCCESS value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RESET_IDLE value)? idle,
    TResult Function(REST_EMAIL value)? email,
    TResult Function(RESET_OTP value)? otp,
    TResult Function(RESET_PASSWORD value)? resetPassword,
    TResult Function(RESET_LOADING value)? loading,
    TResult Function(RESET_FAILED value)? failed,
    TResult Function(RESET_SUCCESS value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RESET_SUCCESS implements RecoveryState {
  const factory RESET_SUCCESS({final String? success}) = _$RESET_SUCCESS;

  String? get success;
  @JsonKey(ignore: true)
  _$$RESET_SUCCESSCopyWith<_$RESET_SUCCESS> get copyWith =>
      throw _privateConstructorUsedError;
}
