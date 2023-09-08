// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_current_location_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendCurrentLocationRequest _$SendCurrentLocationRequestFromJson(
    Map<String, dynamic> json) {
  return _SendCurrentLocationRequest.fromJson(json);
}

/// @nodoc
mixin _$SendCurrentLocationRequest {
  @JsonKey(name: "locations")
  List<Locations>? get locations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendCurrentLocationRequestCopyWith<SendCurrentLocationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCurrentLocationRequestCopyWith<$Res> {
  factory $SendCurrentLocationRequestCopyWith(SendCurrentLocationRequest value,
          $Res Function(SendCurrentLocationRequest) then) =
      _$SendCurrentLocationRequestCopyWithImpl<$Res,
          SendCurrentLocationRequest>;
  @useResult
  $Res call({@JsonKey(name: "locations") List<Locations>? locations});
}

/// @nodoc
class _$SendCurrentLocationRequestCopyWithImpl<$Res,
        $Val extends SendCurrentLocationRequest>
    implements $SendCurrentLocationRequestCopyWith<$Res> {
  _$SendCurrentLocationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Locations>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendCurrentLocationRequestCopyWith<$Res>
    implements $SendCurrentLocationRequestCopyWith<$Res> {
  factory _$$_SendCurrentLocationRequestCopyWith(
          _$_SendCurrentLocationRequest value,
          $Res Function(_$_SendCurrentLocationRequest) then) =
      __$$_SendCurrentLocationRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "locations") List<Locations>? locations});
}

/// @nodoc
class __$$_SendCurrentLocationRequestCopyWithImpl<$Res>
    extends _$SendCurrentLocationRequestCopyWithImpl<$Res,
        _$_SendCurrentLocationRequest>
    implements _$$_SendCurrentLocationRequestCopyWith<$Res> {
  __$$_SendCurrentLocationRequestCopyWithImpl(
      _$_SendCurrentLocationRequest _value,
      $Res Function(_$_SendCurrentLocationRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(_$_SendCurrentLocationRequest(
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Locations>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendCurrentLocationRequest extends _SendCurrentLocationRequest {
  const _$_SendCurrentLocationRequest(
      {@JsonKey(name: "locations") final List<Locations>? locations})
      : _locations = locations,
        super._();

  factory _$_SendCurrentLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SendCurrentLocationRequestFromJson(json);

  final List<Locations>? _locations;
  @override
  @JsonKey(name: "locations")
  List<Locations>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SendCurrentLocationRequest(locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendCurrentLocationRequest &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_locations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendCurrentLocationRequestCopyWith<_$_SendCurrentLocationRequest>
      get copyWith => __$$_SendCurrentLocationRequestCopyWithImpl<
          _$_SendCurrentLocationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendCurrentLocationRequestToJson(
      this,
    );
  }
}

abstract class _SendCurrentLocationRequest extends SendCurrentLocationRequest {
  const factory _SendCurrentLocationRequest(
          {@JsonKey(name: "locations") final List<Locations>? locations}) =
      _$_SendCurrentLocationRequest;
  const _SendCurrentLocationRequest._() : super._();

  factory _SendCurrentLocationRequest.fromJson(Map<String, dynamic> json) =
      _$_SendCurrentLocationRequest.fromJson;

  @override
  @JsonKey(name: "locations")
  List<Locations>? get locations;
  @override
  @JsonKey(ignore: true)
  _$$_SendCurrentLocationRequestCopyWith<_$_SendCurrentLocationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

Locations _$LocationsFromJson(Map<String, dynamic> json) {
  return _Locations.fromJson(json);
}

/// @nodoc
mixin _$Locations {
  @JsonKey(name: "lat")
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: "lng")
  double get lng => throw _privateConstructorUsedError;
  @JsonKey(name: "UUID")
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationsCopyWith<Locations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsCopyWith<$Res> {
  factory $LocationsCopyWith(Locations value, $Res Function(Locations) then) =
      _$LocationsCopyWithImpl<$Res, Locations>;
  @useResult
  $Res call(
      {@JsonKey(name: "lat") double lat,
      @JsonKey(name: "lng") double lng,
      @JsonKey(name: "UUID") String uuid});
}

/// @nodoc
class _$LocationsCopyWithImpl<$Res, $Val extends Locations>
    implements $LocationsCopyWith<$Res> {
  _$LocationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? uuid = null,
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
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationsCopyWith<$Res> implements $LocationsCopyWith<$Res> {
  factory _$$_LocationsCopyWith(
          _$_Locations value, $Res Function(_$_Locations) then) =
      __$$_LocationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lat") double lat,
      @JsonKey(name: "lng") double lng,
      @JsonKey(name: "UUID") String uuid});
}

/// @nodoc
class __$$_LocationsCopyWithImpl<$Res>
    extends _$LocationsCopyWithImpl<$Res, _$_Locations>
    implements _$$_LocationsCopyWith<$Res> {
  __$$_LocationsCopyWithImpl(
      _$_Locations _value, $Res Function(_$_Locations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? uuid = null,
  }) {
    return _then(_$_Locations(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Locations extends _Locations {
  const _$_Locations(
      {@JsonKey(name: "lat") required this.lat,
      @JsonKey(name: "lng") required this.lng,
      @JsonKey(name: "UUID") required this.uuid})
      : super._();

  factory _$_Locations.fromJson(Map<String, dynamic> json) =>
      _$$_LocationsFromJson(json);

  @override
  @JsonKey(name: "lat")
  final double lat;
  @override
  @JsonKey(name: "lng")
  final double lng;
  @override
  @JsonKey(name: "UUID")
  final String uuid;

  @override
  String toString() {
    return 'Locations(lat: $lat, lng: $lng, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Locations &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationsCopyWith<_$_Locations> get copyWith =>
      __$$_LocationsCopyWithImpl<_$_Locations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationsToJson(
      this,
    );
  }
}

abstract class _Locations extends Locations {
  const factory _Locations(
      {@JsonKey(name: "lat") required final double lat,
      @JsonKey(name: "lng") required final double lng,
      @JsonKey(name: "UUID") required final String uuid}) = _$_Locations;
  const _Locations._() : super._();

  factory _Locations.fromJson(Map<String, dynamic> json) =
      _$_Locations.fromJson;

  @override
  @JsonKey(name: "lat")
  double get lat;
  @override
  @JsonKey(name: "lng")
  double get lng;
  @override
  @JsonKey(name: "UUID")
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$_LocationsCopyWith<_$_Locations> get copyWith =>
      throw _privateConstructorUsedError;
}
