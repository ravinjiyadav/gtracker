// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_circle_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateCircleResponse _$CreateCircleResponseFromJson(Map<String, dynamic> json) {
  return _CreateCircleResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateCircleResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "circle")
  Circle get circle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCircleResponseCopyWith<CreateCircleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCircleResponseCopyWith<$Res> {
  factory $CreateCircleResponseCopyWith(CreateCircleResponse value,
          $Res Function(CreateCircleResponse) then) =
      _$CreateCircleResponseCopyWithImpl<$Res, CreateCircleResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "circle") Circle circle});

  $CircleCopyWith<$Res> get circle;
}

/// @nodoc
class _$CreateCircleResponseCopyWithImpl<$Res,
        $Val extends CreateCircleResponse>
    implements $CreateCircleResponseCopyWith<$Res> {
  _$CreateCircleResponseCopyWithImpl(this._value, this._then);

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
    Object? circle = null,
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
      circle: null == circle
          ? _value.circle
          : circle // ignore: cast_nullable_to_non_nullable
              as Circle,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CircleCopyWith<$Res> get circle {
    return $CircleCopyWith<$Res>(_value.circle, (value) {
      return _then(_value.copyWith(circle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateCircleResponseCopyWith<$Res>
    implements $CreateCircleResponseCopyWith<$Res> {
  factory _$$_CreateCircleResponseCopyWith(_$_CreateCircleResponse value,
          $Res Function(_$_CreateCircleResponse) then) =
      __$$_CreateCircleResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "circle") Circle circle});

  @override
  $CircleCopyWith<$Res> get circle;
}

/// @nodoc
class __$$_CreateCircleResponseCopyWithImpl<$Res>
    extends _$CreateCircleResponseCopyWithImpl<$Res, _$_CreateCircleResponse>
    implements _$$_CreateCircleResponseCopyWith<$Res> {
  __$$_CreateCircleResponseCopyWithImpl(_$_CreateCircleResponse _value,
      $Res Function(_$_CreateCircleResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? circle = null,
  }) {
    return _then(_$_CreateCircleResponse(
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
      circle: null == circle
          ? _value.circle
          : circle // ignore: cast_nullable_to_non_nullable
              as Circle,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateCircleResponse extends _CreateCircleResponse {
  const _$_CreateCircleResponse(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "code") this.code = -1,
      @JsonKey(name: "message") this.message = "",
      @JsonKey(name: "circle") required this.circle})
      : super._();

  factory _$_CreateCircleResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateCircleResponseFromJson(json);

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
  @JsonKey(name: "circle")
  final Circle circle;

  @override
  String toString() {
    return 'CreateCircleResponse(status: $status, code: $code, message: $message, circle: $circle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateCircleResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.circle, circle) || other.circle == circle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message, circle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateCircleResponseCopyWith<_$_CreateCircleResponse> get copyWith =>
      __$$_CreateCircleResponseCopyWithImpl<_$_CreateCircleResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateCircleResponseToJson(
      this,
    );
  }
}

abstract class _CreateCircleResponse extends CreateCircleResponse {
  const factory _CreateCircleResponse(
          {@JsonKey(name: "status") final bool status,
          @JsonKey(name: "code") final int code,
          @JsonKey(name: "message") final String message,
          @JsonKey(name: "circle") required final Circle circle}) =
      _$_CreateCircleResponse;
  const _CreateCircleResponse._() : super._();

  factory _CreateCircleResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateCircleResponse.fromJson;

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
  @JsonKey(name: "circle")
  Circle get circle;
  @override
  @JsonKey(ignore: true)
  _$$_CreateCircleResponseCopyWith<_$_CreateCircleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
