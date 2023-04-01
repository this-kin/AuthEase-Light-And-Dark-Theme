// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() authenticating,
    required TResult Function(dynamic name) authenticated,
    required TResult Function(String reason) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? authenticating,
    TResult? Function(dynamic name)? authenticated,
    TResult? Function(String reason)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? authenticating,
    TResult Function(dynamic name)? authenticated,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNAUTHORIZED value) unauthorized,
    required TResult Function(AUTHENTICATING value) authenticating,
    required TResult Function(AUTHENTICATED value) authenticated,
    required TResult Function(FAILED value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UNAUTHORIZED value)? unauthorized,
    TResult? Function(AUTHENTICATING value)? authenticating,
    TResult? Function(AUTHENTICATED value)? authenticated,
    TResult? Function(FAILED value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNAUTHORIZED value)? unauthorized,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UNAUTHORIZEDCopyWith<$Res> {
  factory _$$UNAUTHORIZEDCopyWith(
          _$UNAUTHORIZED value, $Res Function(_$UNAUTHORIZED) then) =
      __$$UNAUTHORIZEDCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UNAUTHORIZEDCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UNAUTHORIZED>
    implements _$$UNAUTHORIZEDCopyWith<$Res> {
  __$$UNAUTHORIZEDCopyWithImpl(
      _$UNAUTHORIZED _value, $Res Function(_$UNAUTHORIZED) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UNAUTHORIZED implements UNAUTHORIZED {
  const _$UNAUTHORIZED();

  @override
  String toString() {
    return 'AuthState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UNAUTHORIZED);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() authenticating,
    required TResult Function(dynamic name) authenticated,
    required TResult Function(String reason) failed,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? authenticating,
    TResult? Function(dynamic name)? authenticated,
    TResult? Function(String reason)? failed,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? authenticating,
    TResult Function(dynamic name)? authenticated,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNAUTHORIZED value) unauthorized,
    required TResult Function(AUTHENTICATING value) authenticating,
    required TResult Function(AUTHENTICATED value) authenticated,
    required TResult Function(FAILED value) failed,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UNAUTHORIZED value)? unauthorized,
    TResult? Function(AUTHENTICATING value)? authenticating,
    TResult? Function(AUTHENTICATED value)? authenticated,
    TResult? Function(FAILED value)? failed,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNAUTHORIZED value)? unauthorized,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UNAUTHORIZED implements AuthState {
  const factory UNAUTHORIZED() = _$UNAUTHORIZED;
}

/// @nodoc
abstract class _$$AUTHENTICATINGCopyWith<$Res> {
  factory _$$AUTHENTICATINGCopyWith(
          _$AUTHENTICATING value, $Res Function(_$AUTHENTICATING) then) =
      __$$AUTHENTICATINGCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AUTHENTICATINGCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AUTHENTICATING>
    implements _$$AUTHENTICATINGCopyWith<$Res> {
  __$$AUTHENTICATINGCopyWithImpl(
      _$AUTHENTICATING _value, $Res Function(_$AUTHENTICATING) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AUTHENTICATING implements AUTHENTICATING {
  const _$AUTHENTICATING();

  @override
  String toString() {
    return 'AuthState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AUTHENTICATING);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() authenticating,
    required TResult Function(dynamic name) authenticated,
    required TResult Function(String reason) failed,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? authenticating,
    TResult? Function(dynamic name)? authenticated,
    TResult? Function(String reason)? failed,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? authenticating,
    TResult Function(dynamic name)? authenticated,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNAUTHORIZED value) unauthorized,
    required TResult Function(AUTHENTICATING value) authenticating,
    required TResult Function(AUTHENTICATED value) authenticated,
    required TResult Function(FAILED value) failed,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UNAUTHORIZED value)? unauthorized,
    TResult? Function(AUTHENTICATING value)? authenticating,
    TResult? Function(AUTHENTICATED value)? authenticated,
    TResult? Function(FAILED value)? failed,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNAUTHORIZED value)? unauthorized,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class AUTHENTICATING implements AuthState {
  const factory AUTHENTICATING() = _$AUTHENTICATING;
}

/// @nodoc
abstract class _$$AUTHENTICATEDCopyWith<$Res> {
  factory _$$AUTHENTICATEDCopyWith(
          _$AUTHENTICATED value, $Res Function(_$AUTHENTICATED) then) =
      __$$AUTHENTICATEDCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic name});
}

/// @nodoc
class __$$AUTHENTICATEDCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AUTHENTICATED>
    implements _$$AUTHENTICATEDCopyWith<$Res> {
  __$$AUTHENTICATEDCopyWithImpl(
      _$AUTHENTICATED _value, $Res Function(_$AUTHENTICATED) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$AUTHENTICATED(
      freezed == name ? _value.name! : name,
    ));
  }
}

/// @nodoc

class _$AUTHENTICATED implements AUTHENTICATED {
  const _$AUTHENTICATED([this.name]);

  @override
  final dynamic name;

  @override
  String toString() {
    return 'AuthState.authenticated(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AUTHENTICATED &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AUTHENTICATEDCopyWith<_$AUTHENTICATED> get copyWith =>
      __$$AUTHENTICATEDCopyWithImpl<_$AUTHENTICATED>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() authenticating,
    required TResult Function(dynamic name) authenticated,
    required TResult Function(String reason) failed,
  }) {
    return authenticated(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? authenticating,
    TResult? Function(dynamic name)? authenticated,
    TResult? Function(String reason)? failed,
  }) {
    return authenticated?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? authenticating,
    TResult Function(dynamic name)? authenticated,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNAUTHORIZED value) unauthorized,
    required TResult Function(AUTHENTICATING value) authenticating,
    required TResult Function(AUTHENTICATED value) authenticated,
    required TResult Function(FAILED value) failed,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UNAUTHORIZED value)? unauthorized,
    TResult? Function(AUTHENTICATING value)? authenticating,
    TResult? Function(AUTHENTICATED value)? authenticated,
    TResult? Function(FAILED value)? failed,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNAUTHORIZED value)? unauthorized,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AUTHENTICATED implements AuthState {
  const factory AUTHENTICATED([final dynamic name]) = _$AUTHENTICATED;

  dynamic get name;
  @JsonKey(ignore: true)
  _$$AUTHENTICATEDCopyWith<_$AUTHENTICATED> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FAILEDCopyWith<$Res> {
  factory _$$FAILEDCopyWith(_$FAILED value, $Res Function(_$FAILED) then) =
      __$$FAILEDCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$FAILEDCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FAILED>
    implements _$$FAILEDCopyWith<$Res> {
  __$$FAILEDCopyWithImpl(_$FAILED _value, $Res Function(_$FAILED) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$FAILED(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FAILED implements FAILED {
  const _$FAILED({required this.reason});

  @override
  final String reason;

  @override
  String toString() {
    return 'AuthState.failed(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FAILED &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FAILEDCopyWith<_$FAILED> get copyWith =>
      __$$FAILEDCopyWithImpl<_$FAILED>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() authenticating,
    required TResult Function(dynamic name) authenticated,
    required TResult Function(String reason) failed,
  }) {
    return failed(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? authenticating,
    TResult? Function(dynamic name)? authenticated,
    TResult? Function(String reason)? failed,
  }) {
    return failed?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? authenticating,
    TResult Function(dynamic name)? authenticated,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNAUTHORIZED value) unauthorized,
    required TResult Function(AUTHENTICATING value) authenticating,
    required TResult Function(AUTHENTICATED value) authenticated,
    required TResult Function(FAILED value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UNAUTHORIZED value)? unauthorized,
    TResult? Function(AUTHENTICATING value)? authenticating,
    TResult? Function(AUTHENTICATED value)? authenticated,
    TResult? Function(FAILED value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNAUTHORIZED value)? unauthorized,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FAILED implements AuthState {
  const factory FAILED({required final String reason}) = _$FAILED;

  String get reason;
  @JsonKey(ignore: true)
  _$$FAILEDCopyWith<_$FAILED> get copyWith =>
      throw _privateConstructorUsedError;
}
