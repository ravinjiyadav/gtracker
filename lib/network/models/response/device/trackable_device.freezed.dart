// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trackable_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackableDevice _$TrackableDeviceFromJson(Map<String, dynamic> json) {
  return _TrackableDevice.fromJson(json);
}

/// @nodoc
mixin _$TrackableDevice {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "imei")
  String get imei => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackableDeviceCopyWith<TrackableDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackableDeviceCopyWith<$Res> {
  factory $TrackableDeviceCopyWith(
          TrackableDevice value, $Res Function(TrackableDevice) then) =
      _$TrackableDeviceCopyWithImpl<$Res, TrackableDevice>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "imei") String imei,
      @JsonKey(name: "user_id") int userId});
}

/// @nodoc
class _$TrackableDeviceCopyWithImpl<$Res, $Val extends TrackableDevice>
    implements $TrackableDeviceCopyWith<$Res> {
  _$TrackableDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imei = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imei: null == imei
          ? _value.imei
          : imei // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrackableDeviceCopyWith<$Res>
    implements $TrackableDeviceCopyWith<$Res> {
  factory _$$_TrackableDeviceCopyWith(
          _$_TrackableDevice value, $Res Function(_$_TrackableDevice) then) =
      __$$_TrackableDeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "imei") String imei,
      @JsonKey(name: "user_id") int userId});
}

/// @nodoc
class __$$_TrackableDeviceCopyWithImpl<$Res>
    extends _$TrackableDeviceCopyWithImpl<$Res, _$_TrackableDevice>
    implements _$$_TrackableDeviceCopyWith<$Res> {
  __$$_TrackableDeviceCopyWithImpl(
      _$_TrackableDevice _value, $Res Function(_$_TrackableDevice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imei = null,
    Object? userId = null,
  }) {
    return _then(_$_TrackableDevice(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imei: null == imei
          ? _value.imei
          : imei // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrackableDevice extends _TrackableDevice {
  const _$_TrackableDevice(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "imei") required this.imei,
      @JsonKey(name: "user_id") this.userId = -1})
      : super._();

  factory _$_TrackableDevice.fromJson(Map<String, dynamic> json) =>
      _$$_TrackableDeviceFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "imei")
  final String imei;
  @override
  @JsonKey(name: "user_id")
  final int userId;

  @override
  String toString() {
    return 'TrackableDevice(id: $id, imei: $imei, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackableDevice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imei, imei) || other.imei == imei) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imei, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackableDeviceCopyWith<_$_TrackableDevice> get copyWith =>
      __$$_TrackableDeviceCopyWithImpl<_$_TrackableDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackableDeviceToJson(
      this,
    );
  }
}

abstract class _TrackableDevice extends TrackableDevice {
  const factory _TrackableDevice(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "imei") required final String imei,
      @JsonKey(name: "user_id") final int userId}) = _$_TrackableDevice;
  const _TrackableDevice._() : super._();

  factory _TrackableDevice.fromJson(Map<String, dynamic> json) =
      _$_TrackableDevice.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "imei")
  String get imei;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_TrackableDeviceCopyWith<_$_TrackableDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
