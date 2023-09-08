// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assign_place_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssignPlaceRequest _$AssignPlaceRequestFromJson(Map<String, dynamic> json) {
  return _AssignPlaceRequest.fromJson(json);
}

/// @nodoc
mixin _$AssignPlaceRequest {
  @JsonKey(name: "member_id")
  int get member_id => throw _privateConstructorUsedError;
  @JsonKey(name: "place_id")
  int get place_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignPlaceRequestCopyWith<AssignPlaceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignPlaceRequestCopyWith<$Res> {
  factory $AssignPlaceRequestCopyWith(
          AssignPlaceRequest value, $Res Function(AssignPlaceRequest) then) =
      _$AssignPlaceRequestCopyWithImpl<$Res, AssignPlaceRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "member_id") int member_id,
      @JsonKey(name: "place_id") int place_id});
}

/// @nodoc
class _$AssignPlaceRequestCopyWithImpl<$Res, $Val extends AssignPlaceRequest>
    implements $AssignPlaceRequestCopyWith<$Res> {
  _$AssignPlaceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? member_id = null,
    Object? place_id = null,
  }) {
    return _then(_value.copyWith(
      member_id: null == member_id
          ? _value.member_id
          : member_id // ignore: cast_nullable_to_non_nullable
              as int,
      place_id: null == place_id
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssignPlaceRequestCopyWith<$Res>
    implements $AssignPlaceRequestCopyWith<$Res> {
  factory _$$_AssignPlaceRequestCopyWith(_$_AssignPlaceRequest value,
          $Res Function(_$_AssignPlaceRequest) then) =
      __$$_AssignPlaceRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "member_id") int member_id,
      @JsonKey(name: "place_id") int place_id});
}

/// @nodoc
class __$$_AssignPlaceRequestCopyWithImpl<$Res>
    extends _$AssignPlaceRequestCopyWithImpl<$Res, _$_AssignPlaceRequest>
    implements _$$_AssignPlaceRequestCopyWith<$Res> {
  __$$_AssignPlaceRequestCopyWithImpl(
      _$_AssignPlaceRequest _value, $Res Function(_$_AssignPlaceRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? member_id = null,
    Object? place_id = null,
  }) {
    return _then(_$_AssignPlaceRequest(
      member_id: null == member_id
          ? _value.member_id
          : member_id // ignore: cast_nullable_to_non_nullable
              as int,
      place_id: null == place_id
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssignPlaceRequest extends _AssignPlaceRequest {
  const _$_AssignPlaceRequest(
      {@JsonKey(name: "member_id") required this.member_id,
      @JsonKey(name: "place_id") required this.place_id})
      : super._();

  factory _$_AssignPlaceRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AssignPlaceRequestFromJson(json);

  @override
  @JsonKey(name: "member_id")
  final int member_id;
  @override
  @JsonKey(name: "place_id")
  final int place_id;

  @override
  String toString() {
    return 'AssignPlaceRequest(member_id: $member_id, place_id: $place_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssignPlaceRequest &&
            (identical(other.member_id, member_id) ||
                other.member_id == member_id) &&
            (identical(other.place_id, place_id) ||
                other.place_id == place_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, member_id, place_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssignPlaceRequestCopyWith<_$_AssignPlaceRequest> get copyWith =>
      __$$_AssignPlaceRequestCopyWithImpl<_$_AssignPlaceRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssignPlaceRequestToJson(
      this,
    );
  }
}

abstract class _AssignPlaceRequest extends AssignPlaceRequest {
  const factory _AssignPlaceRequest(
          {@JsonKey(name: "member_id") required final int member_id,
          @JsonKey(name: "place_id") required final int place_id}) =
      _$_AssignPlaceRequest;
  const _AssignPlaceRequest._() : super._();

  factory _AssignPlaceRequest.fromJson(Map<String, dynamic> json) =
      _$_AssignPlaceRequest.fromJson;

  @override
  @JsonKey(name: "member_id")
  int get member_id;
  @override
  @JsonKey(name: "place_id")
  int get place_id;
  @override
  @JsonKey(ignore: true)
  _$$_AssignPlaceRequestCopyWith<_$_AssignPlaceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
