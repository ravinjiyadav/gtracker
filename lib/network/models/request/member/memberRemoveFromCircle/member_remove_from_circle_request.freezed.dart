// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_remove_from_circle_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberRemoveFromCircleRequest _$MemberRemoveFromCircleRequestFromJson(
    Map<String, dynamic> json) {
  return _MemberRemoveFromCircleRequest.fromJson(json);
}

/// @nodoc
mixin _$MemberRemoveFromCircleRequest {
  @JsonKey(name: 'member_id')
  int get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'circle_id')
  int get circleId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberRemoveFromCircleRequestCopyWith<MemberRemoveFromCircleRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberRemoveFromCircleRequestCopyWith<$Res> {
  factory $MemberRemoveFromCircleRequestCopyWith(
          MemberRemoveFromCircleRequest value,
          $Res Function(MemberRemoveFromCircleRequest) then) =
      _$MemberRemoveFromCircleRequestCopyWithImpl<$Res,
          MemberRemoveFromCircleRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      @JsonKey(name: 'circle_id') int circleId});
}

/// @nodoc
class _$MemberRemoveFromCircleRequestCopyWithImpl<$Res,
        $Val extends MemberRemoveFromCircleRequest>
    implements $MemberRemoveFromCircleRequestCopyWith<$Res> {
  _$MemberRemoveFromCircleRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? circleId = null,
  }) {
    return _then(_value.copyWith(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      circleId: null == circleId
          ? _value.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberRemoveFromCircleRequestCopyWith<$Res>
    implements $MemberRemoveFromCircleRequestCopyWith<$Res> {
  factory _$$_MemberRemoveFromCircleRequestCopyWith(
          _$_MemberRemoveFromCircleRequest value,
          $Res Function(_$_MemberRemoveFromCircleRequest) then) =
      __$$_MemberRemoveFromCircleRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      @JsonKey(name: 'circle_id') int circleId});
}

/// @nodoc
class __$$_MemberRemoveFromCircleRequestCopyWithImpl<$Res>
    extends _$MemberRemoveFromCircleRequestCopyWithImpl<$Res,
        _$_MemberRemoveFromCircleRequest>
    implements _$$_MemberRemoveFromCircleRequestCopyWith<$Res> {
  __$$_MemberRemoveFromCircleRequestCopyWithImpl(
      _$_MemberRemoveFromCircleRequest _value,
      $Res Function(_$_MemberRemoveFromCircleRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? circleId = null,
  }) {
    return _then(_$_MemberRemoveFromCircleRequest(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      circleId: null == circleId
          ? _value.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberRemoveFromCircleRequest extends _MemberRemoveFromCircleRequest {
  const _$_MemberRemoveFromCircleRequest(
      {@JsonKey(name: 'member_id') required this.memberId,
      @JsonKey(name: 'circle_id') required this.circleId})
      : super._();

  factory _$_MemberRemoveFromCircleRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_MemberRemoveFromCircleRequestFromJson(json);

  @override
  @JsonKey(name: 'member_id')
  final int memberId;
  @override
  @JsonKey(name: 'circle_id')
  final int circleId;

  @override
  String toString() {
    return 'MemberRemoveFromCircleRequest(memberId: $memberId, circleId: $circleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberRemoveFromCircleRequest &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.circleId, circleId) ||
                other.circleId == circleId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, memberId, circleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberRemoveFromCircleRequestCopyWith<_$_MemberRemoveFromCircleRequest>
      get copyWith => __$$_MemberRemoveFromCircleRequestCopyWithImpl<
          _$_MemberRemoveFromCircleRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberRemoveFromCircleRequestToJson(
      this,
    );
  }
}

abstract class _MemberRemoveFromCircleRequest
    extends MemberRemoveFromCircleRequest {
  const factory _MemberRemoveFromCircleRequest(
          {@JsonKey(name: 'member_id') required final int memberId,
          @JsonKey(name: 'circle_id') required final int circleId}) =
      _$_MemberRemoveFromCircleRequest;
  const _MemberRemoveFromCircleRequest._() : super._();

  factory _MemberRemoveFromCircleRequest.fromJson(Map<String, dynamic> json) =
      _$_MemberRemoveFromCircleRequest.fromJson;

  @override
  @JsonKey(name: 'member_id')
  int get memberId;
  @override
  @JsonKey(name: 'circle_id')
  int get circleId;
  @override
  @JsonKey(ignore: true)
  _$$_MemberRemoveFromCircleRequestCopyWith<_$_MemberRemoveFromCircleRequest>
      get copyWith => throw _privateConstructorUsedError;
}
