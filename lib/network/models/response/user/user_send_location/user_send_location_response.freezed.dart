// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_send_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSendLocations _$UserSendLocationsFromJson(Map<String, dynamic> json) {
  return _UserSendLocations.fromJson(json);
}

/// @nodoc
mixin _$UserSendLocations {
  @JsonKey(name: "UUID")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "lat")
  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: "lng")
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSendLocationsCopyWith<UserSendLocations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSendLocationsCopyWith<$Res> {
  factory $UserSendLocationsCopyWith(
          UserSendLocations value, $Res Function(UserSendLocations) then) =
      _$UserSendLocationsCopyWithImpl<$Res, UserSendLocations>;
  @useResult
  $Res call(
      {@JsonKey(name: "UUID") String? id,
      @JsonKey(name: "lat") double? lat,
      @JsonKey(name: "lng") double? lng});
}

/// @nodoc
class _$UserSendLocationsCopyWithImpl<$Res, $Val extends UserSendLocations>
    implements $UserSendLocationsCopyWith<$Res> {
  _$UserSendLocationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserSendLocationsCopyWith<$Res>
    implements $UserSendLocationsCopyWith<$Res> {
  factory _$$_UserSendLocationsCopyWith(_$_UserSendLocations value,
          $Res Function(_$_UserSendLocations) then) =
      __$$_UserSendLocationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "UUID") String? id,
      @JsonKey(name: "lat") double? lat,
      @JsonKey(name: "lng") double? lng});
}

/// @nodoc
class __$$_UserSendLocationsCopyWithImpl<$Res>
    extends _$UserSendLocationsCopyWithImpl<$Res, _$_UserSendLocations>
    implements _$$_UserSendLocationsCopyWith<$Res> {
  __$$_UserSendLocationsCopyWithImpl(
      _$_UserSendLocations _value, $Res Function(_$_UserSendLocations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_UserSendLocations(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSendLocations extends _UserSendLocations {
  const _$_UserSendLocations(
      {@JsonKey(name: "UUID") this.id,
      @JsonKey(name: "lat") this.lat,
      @JsonKey(name: "lng") this.lng})
      : super._();

  factory _$_UserSendLocations.fromJson(Map<String, dynamic> json) =>
      _$$_UserSendLocationsFromJson(json);

  @override
  @JsonKey(name: "UUID")
  final String? id;
  @override
  @JsonKey(name: "lat")
  final double? lat;
  @override
  @JsonKey(name: "lng")
  final double? lng;

  @override
  String toString() {
    return 'UserSendLocations(id: $id, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSendLocations &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserSendLocationsCopyWith<_$_UserSendLocations> get copyWith =>
      __$$_UserSendLocationsCopyWithImpl<_$_UserSendLocations>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSendLocationsToJson(
      this,
    );
  }
}

abstract class _UserSendLocations extends UserSendLocations {
  const factory _UserSendLocations(
      {@JsonKey(name: "UUID") final String? id,
      @JsonKey(name: "lat") final double? lat,
      @JsonKey(name: "lng") final double? lng}) = _$_UserSendLocations;
  const _UserSendLocations._() : super._();

  factory _UserSendLocations.fromJson(Map<String, dynamic> json) =
      _$_UserSendLocations.fromJson;

  @override
  @JsonKey(name: "UUID")
  String? get id;
  @override
  @JsonKey(name: "lat")
  double? get lat;
  @override
  @JsonKey(name: "lng")
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$$_UserSendLocationsCopyWith<_$_UserSendLocations> get copyWith =>
      throw _privateConstructorUsedError;
}
