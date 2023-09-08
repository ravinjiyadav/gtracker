// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_place_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddPlaceRequest _$AddPlaceRequestFromJson(Map<String, dynamic> json) {
  return _AddPlaceRequest.fromJson(json);
}

/// @nodoc
mixin _$AddPlaceRequest {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "lat", includeIfNull: false)
  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: "lng", includeIfNull: false)
  double? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: "radius", includeIfNull: false)
  double? get radius => throw _privateConstructorUsedError;
  @JsonKey(name: "geofence")
  List<LatLngInfo>? get geofence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddPlaceRequestCopyWith<AddPlaceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPlaceRequestCopyWith<$Res> {
  factory $AddPlaceRequestCopyWith(
          AddPlaceRequest value, $Res Function(AddPlaceRequest) then) =
      _$AddPlaceRequestCopyWithImpl<$Res, AddPlaceRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "lat", includeIfNull: false) double? lat,
      @JsonKey(name: "lng", includeIfNull: false) double? lng,
      @JsonKey(name: "radius", includeIfNull: false) double? radius,
      @JsonKey(name: "geofence") List<LatLngInfo>? geofence});
}

/// @nodoc
class _$AddPlaceRequestCopyWithImpl<$Res, $Val extends AddPlaceRequest>
    implements $AddPlaceRequestCopyWith<$Res> {
  _$AddPlaceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? radius = freezed,
    Object? geofence = freezed,
  }) {
    return _then(_value.copyWith(
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
      geofence: freezed == geofence
          ? _value.geofence
          : geofence // ignore: cast_nullable_to_non_nullable
              as List<LatLngInfo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddPlaceRequestCopyWith<$Res>
    implements $AddPlaceRequestCopyWith<$Res> {
  factory _$$_AddPlaceRequestCopyWith(
          _$_AddPlaceRequest value, $Res Function(_$_AddPlaceRequest) then) =
      __$$_AddPlaceRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "lat", includeIfNull: false) double? lat,
      @JsonKey(name: "lng", includeIfNull: false) double? lng,
      @JsonKey(name: "radius", includeIfNull: false) double? radius,
      @JsonKey(name: "geofence") List<LatLngInfo>? geofence});
}

/// @nodoc
class __$$_AddPlaceRequestCopyWithImpl<$Res>
    extends _$AddPlaceRequestCopyWithImpl<$Res, _$_AddPlaceRequest>
    implements _$$_AddPlaceRequestCopyWith<$Res> {
  __$$_AddPlaceRequestCopyWithImpl(
      _$_AddPlaceRequest _value, $Res Function(_$_AddPlaceRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? radius = freezed,
    Object? geofence = freezed,
  }) {
    return _then(_$_AddPlaceRequest(
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
      geofence: freezed == geofence
          ? _value._geofence
          : geofence // ignore: cast_nullable_to_non_nullable
              as List<LatLngInfo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddPlaceRequest extends _AddPlaceRequest {
  const _$_AddPlaceRequest(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "type") this.type = "polygon",
      @JsonKey(name: "lat", includeIfNull: false) this.lat,
      @JsonKey(name: "lng", includeIfNull: false) this.lng,
      @JsonKey(name: "radius", includeIfNull: false) this.radius,
      @JsonKey(name: "geofence") final List<LatLngInfo>? geofence})
      : _geofence = geofence,
        super._();

  factory _$_AddPlaceRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddPlaceRequestFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "lat", includeIfNull: false)
  final double? lat;
  @override
  @JsonKey(name: "lng", includeIfNull: false)
  final double? lng;
  @override
  @JsonKey(name: "radius", includeIfNull: false)
  final double? radius;
  final List<LatLngInfo>? _geofence;
  @override
  @JsonKey(name: "geofence")
  List<LatLngInfo>? get geofence {
    final value = _geofence;
    if (value == null) return null;
    if (_geofence is EqualUnmodifiableListView) return _geofence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddPlaceRequest(name: $name, type: $type, lat: $lat, lng: $lng, radius: $radius, geofence: $geofence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPlaceRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            const DeepCollectionEquality().equals(other._geofence, _geofence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, lat, lng, radius,
      const DeepCollectionEquality().hash(_geofence));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPlaceRequestCopyWith<_$_AddPlaceRequest> get copyWith =>
      __$$_AddPlaceRequestCopyWithImpl<_$_AddPlaceRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddPlaceRequestToJson(
      this,
    );
  }
}

abstract class _AddPlaceRequest extends AddPlaceRequest {
  const factory _AddPlaceRequest(
          {@JsonKey(name: "name") required final String name,
          @JsonKey(name: "type") final String type,
          @JsonKey(name: "lat", includeIfNull: false) final double? lat,
          @JsonKey(name: "lng", includeIfNull: false) final double? lng,
          @JsonKey(name: "radius", includeIfNull: false) final double? radius,
          @JsonKey(name: "geofence") final List<LatLngInfo>? geofence}) =
      _$_AddPlaceRequest;
  const _AddPlaceRequest._() : super._();

  factory _AddPlaceRequest.fromJson(Map<String, dynamic> json) =
      _$_AddPlaceRequest.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "lat", includeIfNull: false)
  double? get lat;
  @override
  @JsonKey(name: "lng", includeIfNull: false)
  double? get lng;
  @override
  @JsonKey(name: "radius", includeIfNull: false)
  double? get radius;
  @override
  @JsonKey(name: "geofence")
  List<LatLngInfo>? get geofence;
  @override
  @JsonKey(ignore: true)
  _$$_AddPlaceRequestCopyWith<_$_AddPlaceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

LatLngInfo _$LatLngInfoFromJson(Map<String, dynamic> json) {
  return _LatLngInfo.fromJson(json);
}

/// @nodoc
mixin _$LatLngInfo {
  @JsonKey(name: "lat")
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: "lng")
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLngInfoCopyWith<LatLngInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngInfoCopyWith<$Res> {
  factory $LatLngInfoCopyWith(
          LatLngInfo value, $Res Function(LatLngInfo) then) =
      _$LatLngInfoCopyWithImpl<$Res, LatLngInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "lat") double lat, @JsonKey(name: "lng") double lng});
}

/// @nodoc
class _$LatLngInfoCopyWithImpl<$Res, $Val extends LatLngInfo>
    implements $LatLngInfoCopyWith<$Res> {
  _$LatLngInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_LatLngInfoCopyWith<$Res>
    implements $LatLngInfoCopyWith<$Res> {
  factory _$$_LatLngInfoCopyWith(
          _$_LatLngInfo value, $Res Function(_$_LatLngInfo) then) =
      __$$_LatLngInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lat") double lat, @JsonKey(name: "lng") double lng});
}

/// @nodoc
class __$$_LatLngInfoCopyWithImpl<$Res>
    extends _$LatLngInfoCopyWithImpl<$Res, _$_LatLngInfo>
    implements _$$_LatLngInfoCopyWith<$Res> {
  __$$_LatLngInfoCopyWithImpl(
      _$_LatLngInfo _value, $Res Function(_$_LatLngInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$_LatLngInfo(
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
class _$_LatLngInfo extends _LatLngInfo {
  const _$_LatLngInfo(
      {@JsonKey(name: "lat") required this.lat,
      @JsonKey(name: "lng") required this.lng})
      : super._();

  factory _$_LatLngInfo.fromJson(Map<String, dynamic> json) =>
      _$$_LatLngInfoFromJson(json);

  @override
  @JsonKey(name: "lat")
  final double lat;
  @override
  @JsonKey(name: "lng")
  final double lng;

  @override
  String toString() {
    return 'LatLngInfo(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LatLngInfo &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LatLngInfoCopyWith<_$_LatLngInfo> get copyWith =>
      __$$_LatLngInfoCopyWithImpl<_$_LatLngInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatLngInfoToJson(
      this,
    );
  }
}

abstract class _LatLngInfo extends LatLngInfo {
  const factory _LatLngInfo(
      {@JsonKey(name: "lat") required final double lat,
      @JsonKey(name: "lng") required final double lng}) = _$_LatLngInfo;
  const _LatLngInfo._() : super._();

  factory _LatLngInfo.fromJson(Map<String, dynamic> json) =
      _$_LatLngInfo.fromJson;

  @override
  @JsonKey(name: "lat")
  double get lat;
  @override
  @JsonKey(name: "lng")
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$_LatLngInfoCopyWith<_$_LatLngInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
