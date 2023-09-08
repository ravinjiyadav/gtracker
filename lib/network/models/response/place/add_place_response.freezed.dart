// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_place_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddPlaceResponse _$AddPlaceResponseFromJson(Map<String, dynamic> json) {
  return _AddPlaceResponse.fromJson(json);
}

/// @nodoc
mixin _$AddPlaceResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "place")
  Place get place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddPlaceResponseCopyWith<AddPlaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPlaceResponseCopyWith<$Res> {
  factory $AddPlaceResponseCopyWith(
          AddPlaceResponse value, $Res Function(AddPlaceResponse) then) =
      _$AddPlaceResponseCopyWithImpl<$Res, AddPlaceResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "place") Place place});

  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class _$AddPlaceResponseCopyWithImpl<$Res, $Val extends AddPlaceResponse>
    implements $AddPlaceResponseCopyWith<$Res> {
  _$AddPlaceResponseCopyWithImpl(this._value, this._then);

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
    Object? place = null,
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
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res> get place {
    return $PlaceCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddPlaceResponseCopyWith<$Res>
    implements $AddPlaceResponseCopyWith<$Res> {
  factory _$$_AddPlaceResponseCopyWith(
          _$_AddPlaceResponse value, $Res Function(_$_AddPlaceResponse) then) =
      __$$_AddPlaceResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "place") Place place});

  @override
  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class __$$_AddPlaceResponseCopyWithImpl<$Res>
    extends _$AddPlaceResponseCopyWithImpl<$Res, _$_AddPlaceResponse>
    implements _$$_AddPlaceResponseCopyWith<$Res> {
  __$$_AddPlaceResponseCopyWithImpl(
      _$_AddPlaceResponse _value, $Res Function(_$_AddPlaceResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? place = null,
  }) {
    return _then(_$_AddPlaceResponse(
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
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddPlaceResponse extends _AddPlaceResponse {
  const _$_AddPlaceResponse(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "code") this.code = -1,
      @JsonKey(name: "message") this.message = "",
      @JsonKey(name: "place") required this.place})
      : super._();

  factory _$_AddPlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AddPlaceResponseFromJson(json);

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
  @JsonKey(name: "place")
  final Place place;

  @override
  String toString() {
    return 'AddPlaceResponse(status: $status, code: $code, message: $message, place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPlaceResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.place, place) || other.place == place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPlaceResponseCopyWith<_$_AddPlaceResponse> get copyWith =>
      __$$_AddPlaceResponseCopyWithImpl<_$_AddPlaceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddPlaceResponseToJson(
      this,
    );
  }
}

abstract class _AddPlaceResponse extends AddPlaceResponse {
  const factory _AddPlaceResponse(
          {@JsonKey(name: "status") final bool status,
          @JsonKey(name: "code") final int code,
          @JsonKey(name: "message") final String message,
          @JsonKey(name: "place") required final Place place}) =
      _$_AddPlaceResponse;
  const _AddPlaceResponse._() : super._();

  factory _AddPlaceResponse.fromJson(Map<String, dynamic> json) =
      _$_AddPlaceResponse.fromJson;

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
  @JsonKey(name: "place")
  Place get place;
  @override
  @JsonKey(ignore: true)
  _$$_AddPlaceResponseCopyWith<_$_AddPlaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
