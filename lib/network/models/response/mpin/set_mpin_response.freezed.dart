// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_mpin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetMpinResponse _$SetMpinResponseFromJson(Map<String, dynamic> json) {
  return _SetMpinResponse.fromJson(json);
}

/// @nodoc
mixin _$SetMpinResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  GUser? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetMpinResponseCopyWith<SetMpinResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetMpinResponseCopyWith<$Res> {
  factory $SetMpinResponseCopyWith(
          SetMpinResponse value, $Res Function(SetMpinResponse) then) =
      _$SetMpinResponseCopyWithImpl<$Res, SetMpinResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") GUser? data});

  $GUserCopyWith<$Res>? get data;
}

/// @nodoc
class _$SetMpinResponseCopyWithImpl<$Res, $Val extends SetMpinResponse>
    implements $SetMpinResponseCopyWith<$Res> {
  _$SetMpinResponseCopyWithImpl(this._value, this._then);

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
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GUserCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GUserCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SetMpinResponseCopyWith<$Res>
    implements $SetMpinResponseCopyWith<$Res> {
  factory _$$_SetMpinResponseCopyWith(
          _$_SetMpinResponse value, $Res Function(_$_SetMpinResponse) then) =
      __$$_SetMpinResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") GUser? data});

  @override
  $GUserCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_SetMpinResponseCopyWithImpl<$Res>
    extends _$SetMpinResponseCopyWithImpl<$Res, _$_SetMpinResponse>
    implements _$$_SetMpinResponseCopyWith<$Res> {
  __$$_SetMpinResponseCopyWithImpl(
      _$_SetMpinResponse _value, $Res Function(_$_SetMpinResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$_SetMpinResponse(
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SetMpinResponse extends _SetMpinResponse {
  const _$_SetMpinResponse(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "code") this.code = -1,
      @JsonKey(name: "message") this.message = "",
      @JsonKey(name: "data") this.data})
      : super._();

  factory _$_SetMpinResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SetMpinResponseFromJson(json);

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
  final GUser? data;

  @override
  String toString() {
    return 'SetMpinResponse(status: $status, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetMpinResponse &&
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
  _$$_SetMpinResponseCopyWith<_$_SetMpinResponse> get copyWith =>
      __$$_SetMpinResponseCopyWithImpl<_$_SetMpinResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetMpinResponseToJson(
      this,
    );
  }
}

abstract class _SetMpinResponse extends SetMpinResponse {
  const factory _SetMpinResponse(
      {@JsonKey(name: "status") final bool status,
      @JsonKey(name: "code") final int code,
      @JsonKey(name: "message") final String message,
      @JsonKey(name: "data") final GUser? data}) = _$_SetMpinResponse;
  const _SetMpinResponse._() : super._();

  factory _SetMpinResponse.fromJson(Map<String, dynamic> json) =
      _$_SetMpinResponse.fromJson;

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
  GUser? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SetMpinResponseCopyWith<_$_SetMpinResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
