// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mpin_login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MpinLoginRequest _$MpinLoginRequestFromJson(Map<String, dynamic> json) {
  return _MpinLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$MpinLoginRequest {
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  int get mpin => throw _privateConstructorUsedError;
  @JsonKey(name: "device_token")
  String get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MpinLoginRequestCopyWith<MpinLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpinLoginRequestCopyWith<$Res> {
  factory $MpinLoginRequestCopyWith(
          MpinLoginRequest value, $Res Function(MpinLoginRequest) then) =
      _$MpinLoginRequestCopyWithImpl<$Res, MpinLoginRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String phoneNumber,
      @JsonKey(name: "password") int mpin,
      @JsonKey(name: "device_token") String deviceToken});
}

/// @nodoc
class _$MpinLoginRequestCopyWithImpl<$Res, $Val extends MpinLoginRequest>
    implements $MpinLoginRequestCopyWith<$Res> {
  _$MpinLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? phoneNumber = null,
    Object? mpin = null,
    Object? deviceToken = null,
  }) {
    return _then(_value.copyWith(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      mpin: null == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as int,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MpinLoginRequestCopyWith<$Res>
    implements $MpinLoginRequestCopyWith<$Res> {
  factory _$$_MpinLoginRequestCopyWith(
          _$_MpinLoginRequest value, $Res Function(_$_MpinLoginRequest) then) =
      __$$_MpinLoginRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String phoneNumber,
      @JsonKey(name: "password") int mpin,
      @JsonKey(name: "device_token") String deviceToken});
}

/// @nodoc
class __$$_MpinLoginRequestCopyWithImpl<$Res>
    extends _$MpinLoginRequestCopyWithImpl<$Res, _$_MpinLoginRequest>
    implements _$$_MpinLoginRequestCopyWith<$Res> {
  __$$_MpinLoginRequestCopyWithImpl(
      _$_MpinLoginRequest _value, $Res Function(_$_MpinLoginRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? phoneNumber = null,
    Object? mpin = null,
    Object? deviceToken = null,
  }) {
    return _then(_$_MpinLoginRequest(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      mpin: null == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as int,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MpinLoginRequest extends _MpinLoginRequest {
  const _$_MpinLoginRequest(
      {@JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "mobile") required this.phoneNumber,
      @JsonKey(name: "password") required this.mpin,
      @JsonKey(name: "device_token") required this.deviceToken})
      : super._();

  factory _$_MpinLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MpinLoginRequestFromJson(json);

  @override
  @JsonKey(name: "country_code")
  final String countryCode;
  @override
  @JsonKey(name: "mobile")
  final String phoneNumber;
  @override
  @JsonKey(name: "password")
  final int mpin;
  @override
  @JsonKey(name: "device_token")
  final String deviceToken;

  @override
  String toString() {
    return 'MpinLoginRequest(countryCode: $countryCode, phoneNumber: $phoneNumber, mpin: $mpin, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MpinLoginRequest &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.mpin, mpin) || other.mpin == mpin) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, countryCode, phoneNumber, mpin, deviceToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MpinLoginRequestCopyWith<_$_MpinLoginRequest> get copyWith =>
      __$$_MpinLoginRequestCopyWithImpl<_$_MpinLoginRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MpinLoginRequestToJson(
      this,
    );
  }
}

abstract class _MpinLoginRequest extends MpinLoginRequest {
  const factory _MpinLoginRequest(
          {@JsonKey(name: "country_code") required final String countryCode,
          @JsonKey(name: "mobile") required final String phoneNumber,
          @JsonKey(name: "password") required final int mpin,
          @JsonKey(name: "device_token") required final String deviceToken}) =
      _$_MpinLoginRequest;
  const _MpinLoginRequest._() : super._();

  factory _MpinLoginRequest.fromJson(Map<String, dynamic> json) =
      _$_MpinLoginRequest.fromJson;

  @override
  @JsonKey(name: "country_code")
  String get countryCode;
  @override
  @JsonKey(name: "mobile")
  String get phoneNumber;
  @override
  @JsonKey(name: "password")
  int get mpin;
  @override
  @JsonKey(name: "device_token")
  String get deviceToken;
  @override
  @JsonKey(ignore: true)
  _$$_MpinLoginRequestCopyWith<_$_MpinLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
