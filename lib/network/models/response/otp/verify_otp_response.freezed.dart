// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyOtpResponse _$VerifyOtpResponseFromJson(Map<String, dynamic> json) {
  return _VerifyOtpResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpResponseCopyWith<VerifyOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpResponseCopyWith<$Res> {
  factory $VerifyOtpResponseCopyWith(
          VerifyOtpResponse value, $Res Function(VerifyOtpResponse) then) =
      _$VerifyOtpResponseCopyWithImpl<$Res, VerifyOtpResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class _$VerifyOtpResponseCopyWithImpl<$Res, $Val extends VerifyOtpResponse>
    implements $VerifyOtpResponseCopyWith<$Res> {
  _$VerifyOtpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyOtpResponseCopyWith<$Res>
    implements $VerifyOtpResponseCopyWith<$Res> {
  factory _$$_VerifyOtpResponseCopyWith(_$_VerifyOtpResponse value,
          $Res Function(_$_VerifyOtpResponse) then) =
      __$$_VerifyOtpResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class __$$_VerifyOtpResponseCopyWithImpl<$Res>
    extends _$VerifyOtpResponseCopyWithImpl<$Res, _$_VerifyOtpResponse>
    implements _$$_VerifyOtpResponseCopyWith<$Res> {
  __$$_VerifyOtpResponseCopyWithImpl(
      _$_VerifyOtpResponse _value, $Res Function(_$_VerifyOtpResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$_VerifyOtpResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyOtpResponse extends _VerifyOtpResponse {
  const _$_VerifyOtpResponse(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "code") this.code = -1,
      @JsonKey(name: "message") this.message = ""})
      : super._();

  factory _$_VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyOtpResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'VerifyOtpResponse(status: $status, code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyOtpResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyOtpResponseCopyWith<_$_VerifyOtpResponse> get copyWith =>
      __$$_VerifyOtpResponseCopyWithImpl<_$_VerifyOtpResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyOtpResponseToJson(
      this,
    );
  }
}

abstract class _VerifyOtpResponse extends VerifyOtpResponse {
  const factory _VerifyOtpResponse(
      {@JsonKey(name: "status") final bool status,
      @JsonKey(name: "code") final int code,
      @JsonKey(name: "message") final String message}) = _$_VerifyOtpResponse;
  const _VerifyOtpResponse._() : super._();

  factory _VerifyOtpResponse.fromJson(Map<String, dynamic> json) =
      _$_VerifyOtpResponse.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyOtpResponseCopyWith<_$_VerifyOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
