// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'members_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MembersLocations _$MembersLocationsFromJson(Map<String, dynamic> json) {
  return _MembersLocations.fromJson(json);
}

/// @nodoc
mixin _$MembersLocations {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "member_id")
  int get memberId =>
      throw _privateConstructorUsedError; //   @JsonKey(name: "user_id") required int userId,
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "lat")
  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: "lng")
  double? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: "photo")
  String get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembersLocationsCopyWith<MembersLocations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembersLocationsCopyWith<$Res> {
  factory $MembersLocationsCopyWith(
          MembersLocations value, $Res Function(MembersLocations) then) =
      _$MembersLocationsCopyWithImpl<$Res, MembersLocations>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "member_id") int memberId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "lat") double? lat,
      @JsonKey(name: "lng") double? lng,
      @JsonKey(name: "photo") String photo});
}

/// @nodoc
class _$MembersLocationsCopyWithImpl<$Res, $Val extends MembersLocations>
    implements $MembersLocationsCopyWith<$Res> {
  _$MembersLocationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? name = null,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? photo = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembersLocationsCopyWith<$Res>
    implements $MembersLocationsCopyWith<$Res> {
  factory _$$_MembersLocationsCopyWith(
          _$_MembersLocations value, $Res Function(_$_MembersLocations) then) =
      __$$_MembersLocationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "member_id") int memberId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "lat") double? lat,
      @JsonKey(name: "lng") double? lng,
      @JsonKey(name: "photo") String photo});
}

/// @nodoc
class __$$_MembersLocationsCopyWithImpl<$Res>
    extends _$MembersLocationsCopyWithImpl<$Res, _$_MembersLocations>
    implements _$$_MembersLocationsCopyWith<$Res> {
  __$$_MembersLocationsCopyWithImpl(
      _$_MembersLocations _value, $Res Function(_$_MembersLocations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? name = null,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? photo = null,
  }) {
    return _then(_$_MembersLocations(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MembersLocations extends _MembersLocations {
  const _$_MembersLocations(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "member_id") required this.memberId,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "lat") this.lat,
      @JsonKey(name: "lng") this.lng,
      @JsonKey(name: "photo") required this.photo})
      : super._();

  factory _$_MembersLocations.fromJson(Map<String, dynamic> json) =>
      _$$_MembersLocationsFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "member_id")
  final int memberId;
//   @JsonKey(name: "user_id") required int userId,
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "lat")
  final double? lat;
  @override
  @JsonKey(name: "lng")
  final double? lng;
  @override
  @JsonKey(name: "photo")
  final String photo;

  @override
  String toString() {
    return 'MembersLocations(id: $id, memberId: $memberId, name: $name, lat: $lat, lng: $lng, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembersLocations &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, memberId, name, lat, lng, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembersLocationsCopyWith<_$_MembersLocations> get copyWith =>
      __$$_MembersLocationsCopyWithImpl<_$_MembersLocations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MembersLocationsToJson(
      this,
    );
  }
}

abstract class _MembersLocations extends MembersLocations {
  const factory _MembersLocations(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "member_id") required final int memberId,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "lat") final double? lat,
          @JsonKey(name: "lng") final double? lng,
          @JsonKey(name: "photo") required final String photo}) =
      _$_MembersLocations;
  const _MembersLocations._() : super._();

  factory _MembersLocations.fromJson(Map<String, dynamic> json) =
      _$_MembersLocations.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "member_id")
  int get memberId;
  @override //   @JsonKey(name: "user_id") required int userId,
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "lat")
  double? get lat;
  @override
  @JsonKey(name: "lng")
  double? get lng;
  @override
  @JsonKey(name: "photo")
  String get photo;
  @override
  @JsonKey(ignore: true)
  _$$_MembersLocationsCopyWith<_$_MembersLocations> get copyWith =>
      throw _privateConstructorUsedError;
}
