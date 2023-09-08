// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_assigned_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberAssignedLocations _$MemberAssignedLocationsFromJson(
    Map<String, dynamic> json) {
  return _MemberAssignedLocations.fromJson(json);
}

/// @nodoc
mixin _$MemberAssignedLocations {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "lat")
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: "lng")
  double get lng => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberAssignedLocationsCopyWith<MemberAssignedLocations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberAssignedLocationsCopyWith<$Res> {
  factory $MemberAssignedLocationsCopyWith(MemberAssignedLocations value,
          $Res Function(MemberAssignedLocations) then) =
      _$MemberAssignedLocationsCopyWithImpl<$Res, MemberAssignedLocations>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "lat") double lat,
      @JsonKey(name: "lng") double lng,
      @JsonKey(name: "type") String type});
}

/// @nodoc
class _$MemberAssignedLocationsCopyWithImpl<$Res,
        $Val extends MemberAssignedLocations>
    implements $MemberAssignedLocationsCopyWith<$Res> {
  _$MemberAssignedLocationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? lat = null,
    Object? lng = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberAssignedLocationsCopyWith<$Res>
    implements $MemberAssignedLocationsCopyWith<$Res> {
  factory _$$_MemberAssignedLocationsCopyWith(_$_MemberAssignedLocations value,
          $Res Function(_$_MemberAssignedLocations) then) =
      __$$_MemberAssignedLocationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "lat") double lat,
      @JsonKey(name: "lng") double lng,
      @JsonKey(name: "type") String type});
}

/// @nodoc
class __$$_MemberAssignedLocationsCopyWithImpl<$Res>
    extends _$MemberAssignedLocationsCopyWithImpl<$Res,
        _$_MemberAssignedLocations>
    implements _$$_MemberAssignedLocationsCopyWith<$Res> {
  __$$_MemberAssignedLocationsCopyWithImpl(_$_MemberAssignedLocations _value,
      $Res Function(_$_MemberAssignedLocations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? lat = null,
    Object? lng = null,
    Object? type = null,
  }) {
    return _then(_$_MemberAssignedLocations(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberAssignedLocations extends _MemberAssignedLocations {
  const _$_MemberAssignedLocations(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "lat") required this.lat,
      @JsonKey(name: "lng") required this.lng,
      @JsonKey(name: "type") required this.type})
      : super._();

  factory _$_MemberAssignedLocations.fromJson(Map<String, dynamic> json) =>
      _$$_MemberAssignedLocationsFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "lat")
  final double lat;
  @override
  @JsonKey(name: "lng")
  final double lng;
  @override
  @JsonKey(name: "type")
  final String type;

  @override
  String toString() {
    return 'MemberAssignedLocations(id: $id, userId: $userId, name: $name, lat: $lat, lng: $lng, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberAssignedLocations &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, name, lat, lng, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberAssignedLocationsCopyWith<_$_MemberAssignedLocations>
      get copyWith =>
          __$$_MemberAssignedLocationsCopyWithImpl<_$_MemberAssignedLocations>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberAssignedLocationsToJson(
      this,
    );
  }
}

abstract class _MemberAssignedLocations extends MemberAssignedLocations {
  const factory _MemberAssignedLocations(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "user_id") required final int userId,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "lat") required final double lat,
          @JsonKey(name: "lng") required final double lng,
          @JsonKey(name: "type") required final String type}) =
      _$_MemberAssignedLocations;
  const _MemberAssignedLocations._() : super._();

  factory _MemberAssignedLocations.fromJson(Map<String, dynamic> json) =
      _$_MemberAssignedLocations.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "lat")
  double get lat;
  @override
  @JsonKey(name: "lng")
  double get lng;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_MemberAssignedLocationsCopyWith<_$_MemberAssignedLocations>
      get copyWith => throw _privateConstructorUsedError;
}
