// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_detail_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateUserDetailRequest _$UpdateUserDetailRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateUserDetailRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserDetailRequest {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserDetailRequestCopyWith<UpdateUserDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserDetailRequestCopyWith<$Res> {
  factory $UpdateUserDetailRequestCopyWith(UpdateUserDetailRequest value,
          $Res Function(UpdateUserDetailRequest) then) =
      _$UpdateUserDetailRequestCopyWithImpl<$Res, UpdateUserDetailRequest>;
  @useResult
  $Res call({@JsonKey(name: "name") String name});
}

/// @nodoc
class _$UpdateUserDetailRequestCopyWithImpl<$Res,
        $Val extends UpdateUserDetailRequest>
    implements $UpdateUserDetailRequestCopyWith<$Res> {
  _$UpdateUserDetailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateUserDetailRequestCopyWith<$Res>
    implements $UpdateUserDetailRequestCopyWith<$Res> {
  factory _$$_UpdateUserDetailRequestCopyWith(_$_UpdateUserDetailRequest value,
          $Res Function(_$_UpdateUserDetailRequest) then) =
      __$$_UpdateUserDetailRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") String name});
}

/// @nodoc
class __$$_UpdateUserDetailRequestCopyWithImpl<$Res>
    extends _$UpdateUserDetailRequestCopyWithImpl<$Res,
        _$_UpdateUserDetailRequest>
    implements _$$_UpdateUserDetailRequestCopyWith<$Res> {
  __$$_UpdateUserDetailRequestCopyWithImpl(_$_UpdateUserDetailRequest _value,
      $Res Function(_$_UpdateUserDetailRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_UpdateUserDetailRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserDetailRequest extends _UpdateUserDetailRequest {
  const _$_UpdateUserDetailRequest({@JsonKey(name: "name") required this.name})
      : super._();

  factory _$_UpdateUserDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateUserDetailRequestFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'UpdateUserDetailRequest(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserDetailRequest &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserDetailRequestCopyWith<_$_UpdateUserDetailRequest>
      get copyWith =>
          __$$_UpdateUserDetailRequestCopyWithImpl<_$_UpdateUserDetailRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserDetailRequestToJson(
      this,
    );
  }
}

abstract class _UpdateUserDetailRequest extends UpdateUserDetailRequest {
  const factory _UpdateUserDetailRequest(
          {@JsonKey(name: "name") required final String name}) =
      _$_UpdateUserDetailRequest;
  const _UpdateUserDetailRequest._() : super._();

  factory _UpdateUserDetailRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserDetailRequest.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserDetailRequestCopyWith<_$_UpdateUserDetailRequest>
      get copyWith => throw _privateConstructorUsedError;
}
