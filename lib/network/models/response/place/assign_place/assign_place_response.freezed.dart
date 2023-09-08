// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assign_place_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssignPlaceResponse _$AssignPlaceResponseFromJson(Map<String, dynamic> json) {
  return _AssignPlaceResponse.fromJson(json);
}

/// @nodoc
mixin _$AssignPlaceResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignPlaceResponseCopyWith<AssignPlaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignPlaceResponseCopyWith<$Res> {
  factory $AssignPlaceResponseCopyWith(
          AssignPlaceResponse value, $Res Function(AssignPlaceResponse) then) =
      _$AssignPlaceResponseCopyWithImpl<$Res, AssignPlaceResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class _$AssignPlaceResponseCopyWithImpl<$Res, $Val extends AssignPlaceResponse>
    implements $AssignPlaceResponseCopyWith<$Res> {
  _$AssignPlaceResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_AssignPlaceResponseCopyWith<$Res>
    implements $AssignPlaceResponseCopyWith<$Res> {
  factory _$$_AssignPlaceResponseCopyWith(_$_AssignPlaceResponse value,
          $Res Function(_$_AssignPlaceResponse) then) =
      __$$_AssignPlaceResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class __$$_AssignPlaceResponseCopyWithImpl<$Res>
    extends _$AssignPlaceResponseCopyWithImpl<$Res, _$_AssignPlaceResponse>
    implements _$$_AssignPlaceResponseCopyWith<$Res> {
  __$$_AssignPlaceResponseCopyWithImpl(_$_AssignPlaceResponse _value,
      $Res Function(_$_AssignPlaceResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$_AssignPlaceResponse(
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
class _$_AssignPlaceResponse extends _AssignPlaceResponse {
  const _$_AssignPlaceResponse(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "code") this.code = -1,
      @JsonKey(name: "message") this.message = ""})
      : super._();

  factory _$_AssignPlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AssignPlaceResponseFromJson(json);

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
    return 'AssignPlaceResponse(status: $status, code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssignPlaceResponse &&
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
  _$$_AssignPlaceResponseCopyWith<_$_AssignPlaceResponse> get copyWith =>
      __$$_AssignPlaceResponseCopyWithImpl<_$_AssignPlaceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssignPlaceResponseToJson(
      this,
    );
  }
}

abstract class _AssignPlaceResponse extends AssignPlaceResponse {
  const factory _AssignPlaceResponse(
      {@JsonKey(name: "status") final bool status,
      @JsonKey(name: "code") final int code,
      @JsonKey(name: "message") final String message}) = _$_AssignPlaceResponse;
  const _AssignPlaceResponse._() : super._();

  factory _AssignPlaceResponse.fromJson(Map<String, dynamic> json) =
      _$_AssignPlaceResponse.fromJson;

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
  _$$_AssignPlaceResponseCopyWith<_$_AssignPlaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
