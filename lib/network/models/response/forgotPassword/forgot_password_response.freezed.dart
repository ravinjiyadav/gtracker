// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForgotPasswordResponse _$ForgotPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _ForgotPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  BasicGUser get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordResponseCopyWith<ForgotPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordResponseCopyWith<$Res> {
  factory $ForgotPasswordResponseCopyWith(ForgotPasswordResponse value,
          $Res Function(ForgotPasswordResponse) then) =
      _$ForgotPasswordResponseCopyWithImpl<$Res, ForgotPasswordResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") BasicGUser data});

  $BasicGUserCopyWith<$Res> get data;
}

/// @nodoc
class _$ForgotPasswordResponseCopyWithImpl<$Res,
        $Val extends ForgotPasswordResponse>
    implements $ForgotPasswordResponseCopyWith<$Res> {
  _$ForgotPasswordResponseCopyWithImpl(this._value, this._then);

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
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BasicGUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasicGUserCopyWith<$Res> get data {
    return $BasicGUserCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordResponseCopyWith<$Res>
    implements $ForgotPasswordResponseCopyWith<$Res> {
  factory _$$_ForgotPasswordResponseCopyWith(_$_ForgotPasswordResponse value,
          $Res Function(_$_ForgotPasswordResponse) then) =
      __$$_ForgotPasswordResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") BasicGUser data});

  @override
  $BasicGUserCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ForgotPasswordResponseCopyWithImpl<$Res>
    extends _$ForgotPasswordResponseCopyWithImpl<$Res,
        _$_ForgotPasswordResponse>
    implements _$$_ForgotPasswordResponseCopyWith<$Res> {
  __$$_ForgotPasswordResponseCopyWithImpl(_$_ForgotPasswordResponse _value,
      $Res Function(_$_ForgotPasswordResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$_ForgotPasswordResponse(
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BasicGUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForgotPasswordResponse extends _ForgotPasswordResponse {
  const _$_ForgotPasswordResponse(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "code") this.code = -1,
      @JsonKey(name: "message") this.message = "",
      @JsonKey(name: "data") required this.data})
      : super._();

  factory _$_ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ForgotPasswordResponseFromJson(json);

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
  @JsonKey(name: "data")
  final BasicGUser data;

  @override
  String toString() {
    return 'ForgotPasswordResponse(status: $status, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordResponseCopyWith<_$_ForgotPasswordResponse> get copyWith =>
      __$$_ForgotPasswordResponseCopyWithImpl<_$_ForgotPasswordResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForgotPasswordResponseToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordResponse extends ForgotPasswordResponse {
  const factory _ForgotPasswordResponse(
          {@JsonKey(name: "status") final bool status,
          @JsonKey(name: "code") final int code,
          @JsonKey(name: "message") final String message,
          @JsonKey(name: "data") required final BasicGUser data}) =
      _$_ForgotPasswordResponse;
  const _ForgotPasswordResponse._() : super._();

  factory _ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$_ForgotPasswordResponse.fromJson;

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
  @JsonKey(name: "data")
  BasicGUser get data;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordResponseCopyWith<_$_ForgotPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

BasicGUser _$BasicGUserFromJson(Map<String, dynamic> json) {
  return _BasicGUser.fromJson(json);
}

/// @nodoc
mixin _$BasicGUser {
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile")
  String get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  int get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicGUserCopyWith<BasicGUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicGUserCopyWith<$Res> {
  factory $BasicGUserCopyWith(
          BasicGUser value, $Res Function(BasicGUser) then) =
      _$BasicGUserCopyWithImpl<$Res, BasicGUser>;
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String mobile,
      @JsonKey(name: "otp") int otp});
}

/// @nodoc
class _$BasicGUserCopyWithImpl<$Res, $Val extends BasicGUser>
    implements $BasicGUserCopyWith<$Res> {
  _$BasicGUserCopyWithImpl(this._value, this._then);

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
abstract class _$$_BasicGUserCopyWith<$Res>
    implements $BasicGUserCopyWith<$Res> {
  factory _$$_BasicGUserCopyWith(
          _$_BasicGUser value, $Res Function(_$_BasicGUser) then) =
      __$$_BasicGUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String mobile,
      @JsonKey(name: "otp") int otp});
}

/// @nodoc
class __$$_BasicGUserCopyWithImpl<$Res>
    extends _$BasicGUserCopyWithImpl<$Res, _$_BasicGUser>
    implements _$$_BasicGUserCopyWith<$Res> {
  __$$_BasicGUserCopyWithImpl(
      _$_BasicGUser _value, $Res Function(_$_BasicGUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? mobile = null,
    Object? otp = null,
  }) {
    return _then(_$_BasicGUser(
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
class _$_BasicGUser extends _BasicGUser {
  const _$_BasicGUser(
      {@JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "mobile") required this.mobile,
      @JsonKey(name: "otp") this.otp = 0})
      : super._();

  factory _$_BasicGUser.fromJson(Map<String, dynamic> json) =>
      _$$_BasicGUserFromJson(json);

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
    return 'BasicGUser(countryCode: $countryCode, mobile: $mobile, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasicGUser &&
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
  _$$_BasicGUserCopyWith<_$_BasicGUser> get copyWith =>
      __$$_BasicGUserCopyWithImpl<_$_BasicGUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasicGUserToJson(
      this,
    );
  }
}

abstract class _BasicGUser extends BasicGUser {
  const factory _BasicGUser(
      {@JsonKey(name: "country_code") required final String countryCode,
      @JsonKey(name: "mobile") required final String mobile,
      @JsonKey(name: "otp") final int otp}) = _$_BasicGUser;
  const _BasicGUser._() : super._();

  factory _BasicGUser.fromJson(Map<String, dynamic> json) =
      _$_BasicGUser.fromJson;

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
  _$$_BasicGUserCopyWith<_$_BasicGUser> get copyWith =>
      throw _privateConstructorUsedError;
}
