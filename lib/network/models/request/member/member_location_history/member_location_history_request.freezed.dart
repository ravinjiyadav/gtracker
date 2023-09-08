// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_location_history_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberLocationHistoryRequest _$MemberLocationHistoryRequestFromJson(
    Map<String, dynamic> json) {
  return _MemberLocationHistoryRequest.fromJson(json);
}

/// @nodoc
mixin _$MemberLocationHistoryRequest {
  @JsonKey(name: 'member_id')
  int get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberLocationHistoryRequestCopyWith<MemberLocationHistoryRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberLocationHistoryRequestCopyWith<$Res> {
  factory $MemberLocationHistoryRequestCopyWith(
          MemberLocationHistoryRequest value,
          $Res Function(MemberLocationHistoryRequest) then) =
      _$MemberLocationHistoryRequestCopyWithImpl<$Res,
          MemberLocationHistoryRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      @JsonKey(name: 'date') String date});
}

/// @nodoc
class _$MemberLocationHistoryRequestCopyWithImpl<$Res,
        $Val extends MemberLocationHistoryRequest>
    implements $MemberLocationHistoryRequestCopyWith<$Res> {
  _$MemberLocationHistoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberLocationHistoryRequestCopyWith<$Res>
    implements $MemberLocationHistoryRequestCopyWith<$Res> {
  factory _$$_MemberLocationHistoryRequestCopyWith(
          _$_MemberLocationHistoryRequest value,
          $Res Function(_$_MemberLocationHistoryRequest) then) =
      __$$_MemberLocationHistoryRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      @JsonKey(name: 'date') String date});
}

/// @nodoc
class __$$_MemberLocationHistoryRequestCopyWithImpl<$Res>
    extends _$MemberLocationHistoryRequestCopyWithImpl<$Res,
        _$_MemberLocationHistoryRequest>
    implements _$$_MemberLocationHistoryRequestCopyWith<$Res> {
  __$$_MemberLocationHistoryRequestCopyWithImpl(
      _$_MemberLocationHistoryRequest _value,
      $Res Function(_$_MemberLocationHistoryRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? date = null,
  }) {
    return _then(_$_MemberLocationHistoryRequest(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberLocationHistoryRequest extends _MemberLocationHistoryRequest {
  const _$_MemberLocationHistoryRequest(
      {@JsonKey(name: 'member_id') required this.memberId,
      @JsonKey(name: 'date') required this.date})
      : super._();

  factory _$_MemberLocationHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MemberLocationHistoryRequestFromJson(json);

  @override
  @JsonKey(name: 'member_id')
  final int memberId;
  @override
  @JsonKey(name: 'date')
  final String date;

  @override
  String toString() {
    return 'MemberLocationHistoryRequest(memberId: $memberId, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberLocationHistoryRequest &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, memberId, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberLocationHistoryRequestCopyWith<_$_MemberLocationHistoryRequest>
      get copyWith => __$$_MemberLocationHistoryRequestCopyWithImpl<
          _$_MemberLocationHistoryRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberLocationHistoryRequestToJson(
      this,
    );
  }
}

abstract class _MemberLocationHistoryRequest
    extends MemberLocationHistoryRequest {
  const factory _MemberLocationHistoryRequest(
          {@JsonKey(name: 'member_id') required final int memberId,
          @JsonKey(name: 'date') required final String date}) =
      _$_MemberLocationHistoryRequest;
  const _MemberLocationHistoryRequest._() : super._();

  factory _MemberLocationHistoryRequest.fromJson(Map<String, dynamic> json) =
      _$_MemberLocationHistoryRequest.fromJson;

  @override
  @JsonKey(name: 'member_id')
  int get memberId;
  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_MemberLocationHistoryRequestCopyWith<_$_MemberLocationHistoryRequest>
      get copyWith => throw _privateConstructorUsedError;
}
