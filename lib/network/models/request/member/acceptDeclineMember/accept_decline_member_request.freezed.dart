// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accept_decline_member_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AcceptDeclineMemberRequest _$AcceptDeclineMemberRequestFromJson(
    Map<String, dynamic> json) {
  return _AcceptDeclineMemberRequest.fromJson(json);
}

/// @nodoc
mixin _$AcceptDeclineMemberRequest {
  @JsonKey(name: 'request_id')
  int get requestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'isRequestAccepted')
  int get isRequestAccepted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcceptDeclineMemberRequestCopyWith<AcceptDeclineMemberRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptDeclineMemberRequestCopyWith<$Res> {
  factory $AcceptDeclineMemberRequestCopyWith(AcceptDeclineMemberRequest value,
          $Res Function(AcceptDeclineMemberRequest) then) =
      _$AcceptDeclineMemberRequestCopyWithImpl<$Res,
          AcceptDeclineMemberRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') int requestId,
      @JsonKey(name: 'isRequestAccepted') int isRequestAccepted});
}

/// @nodoc
class _$AcceptDeclineMemberRequestCopyWithImpl<$Res,
        $Val extends AcceptDeclineMemberRequest>
    implements $AcceptDeclineMemberRequestCopyWith<$Res> {
  _$AcceptDeclineMemberRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? isRequestAccepted = null,
  }) {
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      isRequestAccepted: null == isRequestAccepted
          ? _value.isRequestAccepted
          : isRequestAccepted // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AcceptDeclineMemberRequestCopyWith<$Res>
    implements $AcceptDeclineMemberRequestCopyWith<$Res> {
  factory _$$_AcceptDeclineMemberRequestCopyWith(
          _$_AcceptDeclineMemberRequest value,
          $Res Function(_$_AcceptDeclineMemberRequest) then) =
      __$$_AcceptDeclineMemberRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') int requestId,
      @JsonKey(name: 'isRequestAccepted') int isRequestAccepted});
}

/// @nodoc
class __$$_AcceptDeclineMemberRequestCopyWithImpl<$Res>
    extends _$AcceptDeclineMemberRequestCopyWithImpl<$Res,
        _$_AcceptDeclineMemberRequest>
    implements _$$_AcceptDeclineMemberRequestCopyWith<$Res> {
  __$$_AcceptDeclineMemberRequestCopyWithImpl(
      _$_AcceptDeclineMemberRequest _value,
      $Res Function(_$_AcceptDeclineMemberRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? isRequestAccepted = null,
  }) {
    return _then(_$_AcceptDeclineMemberRequest(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      isRequestAccepted: null == isRequestAccepted
          ? _value.isRequestAccepted
          : isRequestAccepted // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AcceptDeclineMemberRequest extends _AcceptDeclineMemberRequest {
  const _$_AcceptDeclineMemberRequest(
      {@JsonKey(name: 'request_id') required this.requestId,
      @JsonKey(name: 'isRequestAccepted') required this.isRequestAccepted})
      : super._();

  factory _$_AcceptDeclineMemberRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AcceptDeclineMemberRequestFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final int requestId;
  @override
  @JsonKey(name: 'isRequestAccepted')
  final int isRequestAccepted;

  @override
  String toString() {
    return 'AcceptDeclineMemberRequest(requestId: $requestId, isRequestAccepted: $isRequestAccepted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptDeclineMemberRequest &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.isRequestAccepted, isRequestAccepted) ||
                other.isRequestAccepted == isRequestAccepted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, isRequestAccepted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptDeclineMemberRequestCopyWith<_$_AcceptDeclineMemberRequest>
      get copyWith => __$$_AcceptDeclineMemberRequestCopyWithImpl<
          _$_AcceptDeclineMemberRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AcceptDeclineMemberRequestToJson(
      this,
    );
  }
}

abstract class _AcceptDeclineMemberRequest extends AcceptDeclineMemberRequest {
  const factory _AcceptDeclineMemberRequest(
          {@JsonKey(name: 'request_id')
              required final int requestId,
          @JsonKey(name: 'isRequestAccepted')
              required final int isRequestAccepted}) =
      _$_AcceptDeclineMemberRequest;
  const _AcceptDeclineMemberRequest._() : super._();

  factory _AcceptDeclineMemberRequest.fromJson(Map<String, dynamic> json) =
      _$_AcceptDeclineMemberRequest.fromJson;

  @override
  @JsonKey(name: 'request_id')
  int get requestId;
  @override
  @JsonKey(name: 'isRequestAccepted')
  int get isRequestAccepted;
  @override
  @JsonKey(ignore: true)
  _$$_AcceptDeclineMemberRequestCopyWith<_$_AcceptDeclineMemberRequest>
      get copyWith => throw _privateConstructorUsedError;
}
