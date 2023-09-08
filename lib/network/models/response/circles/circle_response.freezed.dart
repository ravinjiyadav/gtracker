// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circle_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CircleListResponse _$CircleListResponseFromJson(Map<String, dynamic> json) {
  return _CircleListResponse.fromJson(json);
}

/// @nodoc
mixin _$CircleListResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "circle")
  List<Circle> get circles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CircleListResponseCopyWith<CircleListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircleListResponseCopyWith<$Res> {
  factory $CircleListResponseCopyWith(
          CircleListResponse value, $Res Function(CircleListResponse) then) =
      _$CircleListResponseCopyWithImpl<$Res, CircleListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "circle") List<Circle> circles});
}

/// @nodoc
class _$CircleListResponseCopyWithImpl<$Res, $Val extends CircleListResponse>
    implements $CircleListResponseCopyWith<$Res> {
  _$CircleListResponseCopyWithImpl(this._value, this._then);

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
    Object? circles = null,
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
      circles: null == circles
          ? _value.circles
          : circles // ignore: cast_nullable_to_non_nullable
              as List<Circle>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CircleListResponseCopyWith<$Res>
    implements $CircleListResponseCopyWith<$Res> {
  factory _$$_CircleListResponseCopyWith(_$_CircleListResponse value,
          $Res Function(_$_CircleListResponse) then) =
      __$$_CircleListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "circle") List<Circle> circles});
}

/// @nodoc
class __$$_CircleListResponseCopyWithImpl<$Res>
    extends _$CircleListResponseCopyWithImpl<$Res, _$_CircleListResponse>
    implements _$$_CircleListResponseCopyWith<$Res> {
  __$$_CircleListResponseCopyWithImpl(
      _$_CircleListResponse _value, $Res Function(_$_CircleListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? circles = null,
  }) {
    return _then(_$_CircleListResponse(
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
      circles: null == circles
          ? _value._circles
          : circles // ignore: cast_nullable_to_non_nullable
              as List<Circle>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CircleListResponse extends _CircleListResponse {
  const _$_CircleListResponse(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "code") this.code = -1,
      @JsonKey(name: "message") this.message = "",
      @JsonKey(name: "circle") required final List<Circle> circles})
      : _circles = circles,
        super._();

  factory _$_CircleListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CircleListResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<Circle> _circles;
  @override
  @JsonKey(name: "circle")
  List<Circle> get circles {
    if (_circles is EqualUnmodifiableListView) return _circles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_circles);
  }

  @override
  String toString() {
    return 'CircleListResponse(status: $status, code: $code, message: $message, circles: $circles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CircleListResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._circles, _circles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message,
      const DeepCollectionEquality().hash(_circles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CircleListResponseCopyWith<_$_CircleListResponse> get copyWith =>
      __$$_CircleListResponseCopyWithImpl<_$_CircleListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CircleListResponseToJson(
      this,
    );
  }
}

abstract class _CircleListResponse extends CircleListResponse {
  const factory _CircleListResponse(
          {@JsonKey(name: "status") final bool status,
          @JsonKey(name: "code") final int code,
          @JsonKey(name: "message") final String message,
          @JsonKey(name: "circle") required final List<Circle> circles}) =
      _$_CircleListResponse;
  const _CircleListResponse._() : super._();

  factory _CircleListResponse.fromJson(Map<String, dynamic> json) =
      _$_CircleListResponse.fromJson;

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
  List<Circle> get circles;
  @override
  @JsonKey(ignore: true)
  _$$_CircleListResponseCopyWith<_$_CircleListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
