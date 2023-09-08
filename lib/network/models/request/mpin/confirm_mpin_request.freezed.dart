// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_mpin_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfirmMpinRequest _$ConfirmMpinRequestFromJson(Map<String, dynamic> json) {
  return _ConfirmMpinRequest.fromJson(json);
}

/// @nodoc
mixin _$ConfirmMpinRequest {
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "name", includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "location", includeIfNull: false)
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "isRegister", includeIfNull: false)
  bool? get forget => throw _privateConstructorUsedError;
  @JsonKey(name: "mpin")
  int get mpin => throw _privateConstructorUsedError;
  @JsonKey(name: "device_token")
  String get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmMpinRequestCopyWith<ConfirmMpinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmMpinRequestCopyWith<$Res> {
  factory $ConfirmMpinRequestCopyWith(
          ConfirmMpinRequest value, $Res Function(ConfirmMpinRequest) then) =
      _$ConfirmMpinRequestCopyWithImpl<$Res, ConfirmMpinRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String phoneNumber,
      @JsonKey(name: "name", includeIfNull: false) String? name,
      @JsonKey(name: "location", includeIfNull: false) String? location,
      @JsonKey(name: "isRegister", includeIfNull: false) bool? forget,
      @JsonKey(name: "mpin") int mpin,
      @JsonKey(name: "device_token") String deviceToken});
}

/// @nodoc
class _$ConfirmMpinRequestCopyWithImpl<$Res, $Val extends ConfirmMpinRequest>
    implements $ConfirmMpinRequestCopyWith<$Res> {
  _$ConfirmMpinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? phoneNumber = null,
    Object? name = freezed,
    Object? location = freezed,
    Object? forget = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      forget: freezed == forget
          ? _value.forget
          : forget // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$_ConfirmMpinRequestCopyWith<$Res>
    implements $ConfirmMpinRequestCopyWith<$Res> {
  factory _$$_ConfirmMpinRequestCopyWith(_$_ConfirmMpinRequest value,
          $Res Function(_$_ConfirmMpinRequest) then) =
      __$$_ConfirmMpinRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String phoneNumber,
      @JsonKey(name: "name", includeIfNull: false) String? name,
      @JsonKey(name: "location", includeIfNull: false) String? location,
      @JsonKey(name: "isRegister", includeIfNull: false) bool? forget,
      @JsonKey(name: "mpin") int mpin,
      @JsonKey(name: "device_token") String deviceToken});
}

/// @nodoc
class __$$_ConfirmMpinRequestCopyWithImpl<$Res>
    extends _$ConfirmMpinRequestCopyWithImpl<$Res, _$_ConfirmMpinRequest>
    implements _$$_ConfirmMpinRequestCopyWith<$Res> {
  __$$_ConfirmMpinRequestCopyWithImpl(
      _$_ConfirmMpinRequest _value, $Res Function(_$_ConfirmMpinRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? phoneNumber = null,
    Object? name = freezed,
    Object? location = freezed,
    Object? forget = freezed,
    Object? mpin = null,
    Object? deviceToken = null,
  }) {
    return _then(_$_ConfirmMpinRequest(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      forget: freezed == forget
          ? _value.forget
          : forget // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$_ConfirmMpinRequest extends _ConfirmMpinRequest {
  const _$_ConfirmMpinRequest(
      {@JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "mobile") required this.phoneNumber,
      @JsonKey(name: "name", includeIfNull: false) this.name,
      @JsonKey(name: "location", includeIfNull: false) this.location,
      @JsonKey(name: "isRegister", includeIfNull: false) this.forget,
      @JsonKey(name: "mpin") required this.mpin,
      @JsonKey(name: "device_token") required this.deviceToken})
      : super._();

  factory _$_ConfirmMpinRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ConfirmMpinRequestFromJson(json);

  @override
  @JsonKey(name: "country_code")
  final String countryCode;
  @override
  @JsonKey(name: "mobile")
  final String phoneNumber;
  @override
  @JsonKey(name: "name", includeIfNull: false)
  final String? name;
  @override
  @JsonKey(name: "location", includeIfNull: false)
  final String? location;
  @override
  @JsonKey(name: "isRegister", includeIfNull: false)
  final bool? forget;
  @override
  @JsonKey(name: "mpin")
  final int mpin;
  @override
  @JsonKey(name: "device_token")
  final String deviceToken;

  @override
  String toString() {
    return 'ConfirmMpinRequest(countryCode: $countryCode, phoneNumber: $phoneNumber, name: $name, location: $location, forget: $forget, mpin: $mpin, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmMpinRequest &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.forget, forget) || other.forget == forget) &&
            (identical(other.mpin, mpin) || other.mpin == mpin) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countryCode, phoneNumber, name,
      location, forget, mpin, deviceToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmMpinRequestCopyWith<_$_ConfirmMpinRequest> get copyWith =>
      __$$_ConfirmMpinRequestCopyWithImpl<_$_ConfirmMpinRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfirmMpinRequestToJson(
      this,
    );
  }
}

abstract class _ConfirmMpinRequest extends ConfirmMpinRequest {
  const factory _ConfirmMpinRequest(
      {@JsonKey(name: "country_code")
          required final String countryCode,
      @JsonKey(name: "mobile")
          required final String phoneNumber,
      @JsonKey(name: "name", includeIfNull: false)
          final String? name,
      @JsonKey(name: "location", includeIfNull: false)
          final String? location,
      @JsonKey(name: "isRegister", includeIfNull: false)
          final bool? forget,
      @JsonKey(name: "mpin")
          required final int mpin,
      @JsonKey(name: "device_token")
          required final String deviceToken}) = _$_ConfirmMpinRequest;
  const _ConfirmMpinRequest._() : super._();

  factory _ConfirmMpinRequest.fromJson(Map<String, dynamic> json) =
      _$_ConfirmMpinRequest.fromJson;

  @override
  @JsonKey(name: "country_code")
  String get countryCode;
  @override
  @JsonKey(name: "mobile")
  String get phoneNumber;
  @override
  @JsonKey(name: "name", includeIfNull: false)
  String? get name;
  @override
  @JsonKey(name: "location", includeIfNull: false)
  String? get location;
  @override
  @JsonKey(name: "isRegister", includeIfNull: false)
  bool? get forget;
  @override
  @JsonKey(name: "mpin")
  int get mpin;
  @override
  @JsonKey(name: "device_token")
  String get deviceToken;
  @override
  @JsonKey(ignore: true)
  _$$_ConfirmMpinRequestCopyWith<_$_ConfirmMpinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
