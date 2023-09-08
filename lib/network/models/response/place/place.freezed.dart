// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "lat")
  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: "lng")
  double? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: "radius")
  double? get radius => throw _privateConstructorUsedError;
  @JsonKey(name: "lat_array")
  String? get latArray => throw _privateConstructorUsedError;
  @JsonKey(name: "lng_array")
  String? get lngArray => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") int userId,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "lat") double? lat,
      @JsonKey(name: "lng") double? lng,
      @JsonKey(name: "radius") double? radius,
      @JsonKey(name: "lat_array") String? latArray,
      @JsonKey(name: "lng_array") String? lngArray});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? radius = freezed,
    Object? latArray = freezed,
    Object? lngArray = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
      latArray: freezed == latArray
          ? _value.latArray
          : latArray // ignore: cast_nullable_to_non_nullable
              as String?,
      lngArray: freezed == lngArray
          ? _value.lngArray
          : lngArray // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$_PlaceCopyWith(_$_Place value, $Res Function(_$_Place) then) =
      __$$_PlaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") int userId,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "lat") double? lat,
      @JsonKey(name: "lng") double? lng,
      @JsonKey(name: "radius") double? radius,
      @JsonKey(name: "lat_array") String? latArray,
      @JsonKey(name: "lng_array") String? lngArray});
}

/// @nodoc
class __$$_PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res, _$_Place>
    implements _$$_PlaceCopyWith<$Res> {
  __$$_PlaceCopyWithImpl(_$_Place _value, $Res Function(_$_Place) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? radius = freezed,
    Object? latArray = freezed,
    Object? lngArray = freezed,
  }) {
    return _then(_$_Place(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
      latArray: freezed == latArray
          ? _value.latArray
          : latArray // ignore: cast_nullable_to_non_nullable
              as String?,
      lngArray: freezed == lngArray
          ? _value.lngArray
          : lngArray // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Place extends _Place {
  const _$_Place(
      {@JsonKey(name: "user_id") this.userId = -1,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "type") this.type = "polygon",
      @JsonKey(name: "lat") this.lat,
      @JsonKey(name: "lng") this.lng,
      @JsonKey(name: "radius") this.radius,
      @JsonKey(name: "lat_array") this.latArray,
      @JsonKey(name: "lng_array") this.lngArray})
      : super._();

  factory _$_Place.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "lat")
  final double? lat;
  @override
  @JsonKey(name: "lng")
  final double? lng;
  @override
  @JsonKey(name: "radius")
  final double? radius;
  @override
  @JsonKey(name: "lat_array")
  final String? latArray;
  @override
  @JsonKey(name: "lng_array")
  final String? lngArray;

  @override
  String toString() {
    return 'Place(userId: $userId, id: $id, name: $name, type: $type, lat: $lat, lng: $lng, radius: $radius, latArray: $latArray, lngArray: $lngArray)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Place &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.latArray, latArray) ||
                other.latArray == latArray) &&
            (identical(other.lngArray, lngArray) ||
                other.lngArray == lngArray));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, id, name, type, lat, lng,
      radius, latArray, lngArray);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      __$$_PlaceCopyWithImpl<_$_Place>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceToJson(
      this,
    );
  }
}

abstract class _Place extends Place {
  const factory _Place(
      {@JsonKey(name: "user_id") final int userId,
      @JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "type") final String type,
      @JsonKey(name: "lat") final double? lat,
      @JsonKey(name: "lng") final double? lng,
      @JsonKey(name: "radius") final double? radius,
      @JsonKey(name: "lat_array") final String? latArray,
      @JsonKey(name: "lng_array") final String? lngArray}) = _$_Place;
  const _Place._() : super._();

  factory _Place.fromJson(Map<String, dynamic> json) = _$_Place.fromJson;

  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "lat")
  double? get lat;
  @override
  @JsonKey(name: "lng")
  double? get lng;
  @override
  @JsonKey(name: "radius")
  double? get radius;
  @override
  @JsonKey(name: "lat_array")
  String? get latArray;
  @override
  @JsonKey(name: "lng_array")
  String? get lngArray;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      throw _privateConstructorUsedError;
}
