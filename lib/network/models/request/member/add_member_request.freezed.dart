// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_member_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddMemberRequest _$AddMemberRequestFromJson(Map<String, dynamic> json) {
  return _AddMemberRequest.fromJson(json);
}

/// @nodoc
mixin _$AddMemberRequest {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'circle_id')
  int get circleId =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'device_type') required String deviceType,
  @JsonKey(name: 'device_id')
  int? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile')
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddMemberRequestCopyWith<AddMemberRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMemberRequestCopyWith<$Res> {
  factory $AddMemberRequestCopyWith(
          AddMemberRequest value, $Res Function(AddMemberRequest) then) =
      _$AddMemberRequestCopyWithImpl<$Res, AddMemberRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'circle_id') int circleId,
      @JsonKey(name: 'device_id') int? deviceId,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'country_code') String? countryCode});
}

/// @nodoc
class _$AddMemberRequestCopyWithImpl<$Res, $Val extends AddMemberRequest>
    implements $AddMemberRequestCopyWith<$Res> {
  _$AddMemberRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? circleId = null,
    Object? deviceId = freezed,
    Object? mobile = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      circleId: null == circleId
          ? _value.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddMemberRequestCopyWith<$Res>
    implements $AddMemberRequestCopyWith<$Res> {
  factory _$$_AddMemberRequestCopyWith(
          _$_AddMemberRequest value, $Res Function(_$_AddMemberRequest) then) =
      __$$_AddMemberRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'circle_id') int circleId,
      @JsonKey(name: 'device_id') int? deviceId,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'country_code') String? countryCode});
}

/// @nodoc
class __$$_AddMemberRequestCopyWithImpl<$Res>
    extends _$AddMemberRequestCopyWithImpl<$Res, _$_AddMemberRequest>
    implements _$$_AddMemberRequestCopyWith<$Res> {
  __$$_AddMemberRequestCopyWithImpl(
      _$_AddMemberRequest _value, $Res Function(_$_AddMemberRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? circleId = null,
    Object? deviceId = freezed,
    Object? mobile = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_$_AddMemberRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      circleId: null == circleId
          ? _value.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddMemberRequest extends _AddMemberRequest {
  const _$_AddMemberRequest(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'circle_id') required this.circleId,
      @JsonKey(name: 'device_id') this.deviceId,
      @JsonKey(name: 'mobile') this.mobile,
      @JsonKey(name: 'country_code') this.countryCode})
      : super._();

  factory _$_AddMemberRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddMemberRequestFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'circle_id')
  final int circleId;
// @JsonKey(name: 'device_type') required String deviceType,
  @override
  @JsonKey(name: 'device_id')
  final int? deviceId;
  @override
  @JsonKey(name: 'mobile')
  final String? mobile;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;

  @override
  String toString() {
    return 'AddMemberRequest(name: $name, circleId: $circleId, deviceId: $deviceId, mobile: $mobile, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddMemberRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.circleId, circleId) ||
                other.circleId == circleId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, circleId, deviceId, mobile, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddMemberRequestCopyWith<_$_AddMemberRequest> get copyWith =>
      __$$_AddMemberRequestCopyWithImpl<_$_AddMemberRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddMemberRequestToJson(
      this,
    );
  }
}

abstract class _AddMemberRequest extends AddMemberRequest {
  const factory _AddMemberRequest(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'circle_id') required final int circleId,
          @JsonKey(name: 'device_id') final int? deviceId,
          @JsonKey(name: 'mobile') final String? mobile,
          @JsonKey(name: 'country_code') final String? countryCode}) =
      _$_AddMemberRequest;
  const _AddMemberRequest._() : super._();

  factory _AddMemberRequest.fromJson(Map<String, dynamic> json) =
      _$_AddMemberRequest.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'circle_id')
  int get circleId;
  @override // @JsonKey(name: 'device_type') required String deviceType,
  @JsonKey(name: 'device_id')
  int? get deviceId;
  @override
  @JsonKey(name: 'mobile')
  String? get mobile;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$_AddMemberRequestCopyWith<_$_AddMemberRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
