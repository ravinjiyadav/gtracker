// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_location_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberLocationHistory _$MemberLocationHistoryFromJson(
    Map<String, dynamic> json) {
  return _MemberLocationHistory.fromJson(json);
}

/// @nodoc
mixin _$MemberLocationHistory {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "member_id")
  int get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: "lat")
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: "lng")
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberLocationHistoryCopyWith<MemberLocationHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberLocationHistoryCopyWith<$Res> {
  factory $MemberLocationHistoryCopyWith(MemberLocationHistory value,
          $Res Function(MemberLocationHistory) then) =
      _$MemberLocationHistoryCopyWithImpl<$Res, MemberLocationHistory>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "member_id") int memberId,
      @JsonKey(name: "lat") double lat,
      @JsonKey(name: "lng") double lng});
}

/// @nodoc
class _$MemberLocationHistoryCopyWithImpl<$Res,
        $Val extends MemberLocationHistory>
    implements $MemberLocationHistoryCopyWith<$Res> {
  _$MemberLocationHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberLocationHistoryCopyWith<$Res>
    implements $MemberLocationHistoryCopyWith<$Res> {
  factory _$$_MemberLocationHistoryCopyWith(_$_MemberLocationHistory value,
          $Res Function(_$_MemberLocationHistory) then) =
      __$$_MemberLocationHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "member_id") int memberId,
      @JsonKey(name: "lat") double lat,
      @JsonKey(name: "lng") double lng});
}

/// @nodoc
class __$$_MemberLocationHistoryCopyWithImpl<$Res>
    extends _$MemberLocationHistoryCopyWithImpl<$Res, _$_MemberLocationHistory>
    implements _$$_MemberLocationHistoryCopyWith<$Res> {
  __$$_MemberLocationHistoryCopyWithImpl(_$_MemberLocationHistory _value,
      $Res Function(_$_MemberLocationHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$_MemberLocationHistory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberLocationHistory extends _MemberLocationHistory {
  const _$_MemberLocationHistory(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "member_id") required this.memberId,
      @JsonKey(name: "lat") required this.lat,
      @JsonKey(name: "lng") required this.lng})
      : super._();

  factory _$_MemberLocationHistory.fromJson(Map<String, dynamic> json) =>
      _$$_MemberLocationHistoryFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "member_id")
  final int memberId;
  @override
  @JsonKey(name: "lat")
  final double lat;
  @override
  @JsonKey(name: "lng")
  final double lng;

  @override
  String toString() {
    return 'MemberLocationHistory(id: $id, memberId: $memberId, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberLocationHistory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, memberId, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberLocationHistoryCopyWith<_$_MemberLocationHistory> get copyWith =>
      __$$_MemberLocationHistoryCopyWithImpl<_$_MemberLocationHistory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberLocationHistoryToJson(
      this,
    );
  }
}

abstract class _MemberLocationHistory extends MemberLocationHistory {
  const factory _MemberLocationHistory(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "member_id") required final int memberId,
          @JsonKey(name: "lat") required final double lat,
          @JsonKey(name: "lng") required final double lng}) =
      _$_MemberLocationHistory;
  const _MemberLocationHistory._() : super._();

  factory _MemberLocationHistory.fromJson(Map<String, dynamic> json) =
      _$_MemberLocationHistory.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "member_id")
  int get memberId;
  @override
  @JsonKey(name: "lat")
  double get lat;
  @override
  @JsonKey(name: "lng")
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$_MemberLocationHistoryCopyWith<_$_MemberLocationHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
