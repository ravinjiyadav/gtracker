// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyOtpRequest _$VerifyOtpRequestFromJson(Map<String, dynamic> json) {
  return _VerifyOtpRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpRequest {
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile")
  String get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  int get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpRequestCopyWith<VerifyOtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpRequestCopyWith<$Res> {
  factory $VerifyOtpRequestCopyWith(
          VerifyOtpRequest value, $Res Function(VerifyOtpRequest) then) =
      _$VerifyOtpRequestCopyWithImpl<$Res, VerifyOtpRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String mobile,
      @JsonKey(name: "otp") int otp});
}

/// @nodoc
class _$VerifyOtpRequestCopyWithImpl<$Res, $Val extends VerifyOtpRequest>
    implements $VerifyOtpRequestCopyWith<$Res> {
  _$VerifyOtpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? mobile = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyOtpRequestCopyWith<$Res>
    implements $VerifyOtpRequestCopyWith<$Res> {
  factory _$$_VerifyOtpRequestCopyWith(
          _$_VerifyOtpRequest value, $Res Function(_$_VerifyOtpRequest) then) =
      __$$_VerifyOtpRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String mobile,
      @JsonKey(name: "otp") int otp});
}

/// @nodoc
class __$$_VerifyOtpRequestCopyWithImpl<$Res>
    extends _$VerifyOtpRequestCopyWithImpl<$Res, _$_VerifyOtpRequest>
    implements _$$_VerifyOtpRequestCopyWith<$Res> {
  __$$_VerifyOtpRequestCopyWithImpl(
      _$_VerifyOtpRequest _value, $Res Function(_$_VerifyOtpRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? mobile = null,
    Object? otp = null,
  }) {
    return _then(_$_VerifyOtpRequest(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyOtpRequest extends _VerifyOtpRequest {
  const _$_VerifyOtpRequest(
      {@JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "mobile") required this.mobile,
      @JsonKey(name: "otp") required this.otp})
      : super._();

  factory _$_VerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyOtpRequestFromJson(json);

  @override
  @JsonKey(name: "country_code")
  final String countryCode;
  @override
  @JsonKey(name: "mobile")
  final String mobile;
  @override
  @JsonKey(name: "otp")
  final int otp;

  @override
  String toString() {
    return 'VerifyOtpRequest(countryCode: $countryCode, mobile: $mobile, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyOtpRequest &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countryCode, mobile, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyOtpRequestCopyWith<_$_VerifyOtpRequest> get copyWith =>
      __$$_VerifyOtpRequestCopyWithImpl<_$_VerifyOtpRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyOtpRequestToJson(
      this,
    );
  }
}

abstract class _VerifyOtpRequest extends VerifyOtpRequest {
  const factory _VerifyOtpRequest(
      {@JsonKey(name: "country_code") required final String countryCode,
      @JsonKey(name: "mobile") required final String mobile,
      @JsonKey(name: "otp") required final int otp}) = _$_VerifyOtpRequest;
  const _VerifyOtpRequest._() : super._();

  factory _VerifyOtpRequest.fromJson(Map<String, dynamic> json) =
      _$_VerifyOtpRequest.fromJson;

  @override
  @JsonKey(name: "country_code")
  String get countryCode;
  @override
  @JsonKey(name: "mobile")
  String get mobile;
  @override
  @JsonKey(name: "otp")
  int get otp;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyOtpRequestCopyWith<_$_VerifyOtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
