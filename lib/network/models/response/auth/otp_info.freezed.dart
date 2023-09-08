// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OtpInfo _$OtpInfoFromJson(Map<String, dynamic> json) {
  return _OtpInfo.fromJson(json);
}

/// @nodoc
mixin _$OtpInfo {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile")
  String get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  dynamic get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "mpin")
  int get mpin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpInfoCopyWith<OtpInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpInfoCopyWith<$Res> {
  factory $OtpInfoCopyWith(OtpInfo value, $Res Function(OtpInfo) then) =
      _$OtpInfoCopyWithImpl<$Res, OtpInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String mobile,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "mpin") int mpin});
}

/// @nodoc
class _$OtpInfoCopyWithImpl<$Res, $Val extends OtpInfo>
    implements $OtpInfoCopyWith<$Res> {
  _$OtpInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryCode = null,
    Object? mobile = null,
    Object? otp = freezed,
    Object? mpin = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mpin: null == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OtpInfoCopyWith<$Res> implements $OtpInfoCopyWith<$Res> {
  factory _$$_OtpInfoCopyWith(
          _$_OtpInfo value, $Res Function(_$_OtpInfo) then) =
      __$$_OtpInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String mobile,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "mpin") int mpin});
}

/// @nodoc
class __$$_OtpInfoCopyWithImpl<$Res>
    extends _$OtpInfoCopyWithImpl<$Res, _$_OtpInfo>
    implements _$$_OtpInfoCopyWith<$Res> {
  __$$_OtpInfoCopyWithImpl(_$_OtpInfo _value, $Res Function(_$_OtpInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryCode = null,
    Object? mobile = null,
    Object? otp = freezed,
    Object? mpin = null,
  }) {
    return _then(_$_OtpInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mpin: null == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtpInfo extends _OtpInfo {
  const _$_OtpInfo(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "mobile") required this.mobile,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "mpin") this.mpin = 0})
      : super._();

  factory _$_OtpInfo.fromJson(Map<String, dynamic> json) =>
      _$$_OtpInfoFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "country_code")
  final String countryCode;
  @override
  @JsonKey(name: "mobile")
  final String mobile;
  @override
  @JsonKey(name: "otp")
  final dynamic otp;
  @override
  @JsonKey(name: "mpin")
  final int mpin;

  @override
  String toString() {
    return 'OtpInfo(id: $id, countryCode: $countryCode, mobile: $mobile, otp: $otp, mpin: $mpin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            (identical(other.mpin, mpin) || other.mpin == mpin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, countryCode, mobile,
      const DeepCollectionEquality().hash(otp), mpin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpInfoCopyWith<_$_OtpInfo> get copyWith =>
      __$$_OtpInfoCopyWithImpl<_$_OtpInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtpInfoToJson(
      this,
    );
  }
}

abstract class _OtpInfo extends OtpInfo {
  const factory _OtpInfo(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "country_code") required final String countryCode,
      @JsonKey(name: "mobile") required final String mobile,
      @JsonKey(name: "otp") final dynamic otp,
      @JsonKey(name: "mpin") final int mpin}) = _$_OtpInfo;
  const _OtpInfo._() : super._();

  factory _OtpInfo.fromJson(Map<String, dynamic> json) = _$_OtpInfo.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "country_code")
  String get countryCode;
  @override
  @JsonKey(name: "mobile")
  String get mobile;
  @override
  @JsonKey(name: "otp")
  dynamic get otp;
  @override
  @JsonKey(name: "mpin")
  int get mpin;
  @override
  @JsonKey(ignore: true)
  _$$_OtpInfoCopyWith<_$_OtpInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
