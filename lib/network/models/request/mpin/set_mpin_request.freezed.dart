// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_mpin_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetMpinRequest _$SetMpinRequestFromJson(Map<String, dynamic> json) {
  return _SetMpinRequest.fromJson(json);
}

/// @nodoc
mixin _$SetMpinRequest {
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "mpin")
  int get mpin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetMpinRequestCopyWith<SetMpinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetMpinRequestCopyWith<$Res> {
  factory $SetMpinRequestCopyWith(
          SetMpinRequest value, $Res Function(SetMpinRequest) then) =
      _$SetMpinRequestCopyWithImpl<$Res, SetMpinRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String phoneNumber,
      @JsonKey(name: "mpin") int mpin});
}

/// @nodoc
class _$SetMpinRequestCopyWithImpl<$Res, $Val extends SetMpinRequest>
    implements $SetMpinRequestCopyWith<$Res> {
  _$SetMpinRequestCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetMpinRequestCopyWith<$Res>
    implements $SetMpinRequestCopyWith<$Res> {
  factory _$$_SetMpinRequestCopyWith(
          _$_SetMpinRequest value, $Res Function(_$_SetMpinRequest) then) =
      __$$_SetMpinRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "mobile") String phoneNumber,
      @JsonKey(name: "mpin") int mpin});
}

/// @nodoc
class __$$_SetMpinRequestCopyWithImpl<$Res>
    extends _$SetMpinRequestCopyWithImpl<$Res, _$_SetMpinRequest>
    implements _$$_SetMpinRequestCopyWith<$Res> {
  __$$_SetMpinRequestCopyWithImpl(
      _$_SetMpinRequest _value, $Res Function(_$_SetMpinRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? phoneNumber = null,
    Object? mpin = null,
  }) {
    return _then(_$_SetMpinRequest(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SetMpinRequest extends _SetMpinRequest {
  const _$_SetMpinRequest(
      {@JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "mobile") required this.phoneNumber,
      @JsonKey(name: "mpin") required this.mpin})
      : super._();

  factory _$_SetMpinRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SetMpinRequestFromJson(json);

  @override
  @JsonKey(name: "country_code")
  final String countryCode;
  @override
  @JsonKey(name: "mobile")
  final String phoneNumber;
  @override
  @JsonKey(name: "mpin")
  final int mpin;

  @override
  String toString() {
    return 'SetMpinRequest(countryCode: $countryCode, phoneNumber: $phoneNumber, mpin: $mpin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetMpinRequest &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.mpin, mpin) || other.mpin == mpin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countryCode, phoneNumber, mpin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetMpinRequestCopyWith<_$_SetMpinRequest> get copyWith =>
      __$$_SetMpinRequestCopyWithImpl<_$_SetMpinRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetMpinRequestToJson(
      this,
    );
  }
}

abstract class _SetMpinRequest extends SetMpinRequest {
  const factory _SetMpinRequest(
      {@JsonKey(name: "country_code") required final String countryCode,
      @JsonKey(name: "mobile") required final String phoneNumber,
      @JsonKey(name: "mpin") required final int mpin}) = _$_SetMpinRequest;
  const _SetMpinRequest._() : super._();

  factory _SetMpinRequest.fromJson(Map<String, dynamic> json) =
      _$_SetMpinRequest.fromJson;

  @override
  @JsonKey(name: "country_code")
  String get countryCode;
  @override
  @JsonKey(name: "mobile")
  String get phoneNumber;
  @override
  @JsonKey(name: "mpin")
  int get mpin;
  @override
  @JsonKey(ignore: true)
  _$$_SetMpinRequestCopyWith<_$_SetMpinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
