// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceResponse _$DeviceResponseFromJson(Map<String, dynamic> json) {
  return _DeviceResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "device")
  TrackableDevice get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceResponseCopyWith<DeviceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceResponseCopyWith<$Res> {
  factory $DeviceResponseCopyWith(
          DeviceResponse value, $Res Function(DeviceResponse) then) =
      _$DeviceResponseCopyWithImpl<$Res, DeviceResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "device") TrackableDevice device});

  $TrackableDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DeviceResponseCopyWithImpl<$Res, $Val extends DeviceResponse>
    implements $DeviceResponseCopyWith<$Res> {
  _$DeviceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as TrackableDevice,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackableDeviceCopyWith<$Res> get device {
    return $TrackableDeviceCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeviceResponseCopyWith<$Res>
    implements $DeviceResponseCopyWith<$Res> {
  factory _$$_DeviceResponseCopyWith(
          _$_DeviceResponse value, $Res Function(_$_DeviceResponse) then) =
      __$$_DeviceResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "device") TrackableDevice device});

  @override
  $TrackableDeviceCopyWith<$Res> get device;
}

/// @nodoc
class __$$_DeviceResponseCopyWithImpl<$Res>
    extends _$DeviceResponseCopyWithImpl<$Res, _$_DeviceResponse>
    implements _$$_DeviceResponseCopyWith<$Res> {
  __$$_DeviceResponseCopyWithImpl(
      _$_DeviceResponse _value, $Res Function(_$_DeviceResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? device = null,
  }) {
    return _then(_$_DeviceResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as TrackableDevice,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceResponse extends _DeviceResponse {
  const _$_DeviceResponse(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "code") this.code = -1,
      @JsonKey(name: "message") this.message = "",
      @JsonKey(name: "device") required this.device})
      : super._();

  factory _$_DeviceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "device")
  final TrackableDevice device;

  @override
  String toString() {
    return 'DeviceResponse(status: $status, code: $code, message: $message, device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.device, device) || other.device == device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceResponseCopyWith<_$_DeviceResponse> get copyWith =>
      __$$_DeviceResponseCopyWithImpl<_$_DeviceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceResponseToJson(
      this,
    );
  }
}

abstract class _DeviceResponse extends DeviceResponse {
  const factory _DeviceResponse(
          {@JsonKey(name: "status") final bool status,
          @JsonKey(name: "code") final int code,
          @JsonKey(name: "message") final String message,
          @JsonKey(name: "device") required final TrackableDevice device}) =
      _$_DeviceResponse;
  const _DeviceResponse._() : super._();

  factory _DeviceResponse.fromJson(Map<String, dynamic> json) =
      _$_DeviceResponse.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "device")
  TrackableDevice get device;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceResponseCopyWith<_$_DeviceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceListResponse _$DeviceListResponseFromJson(Map<String, dynamic> json) {
  return _DeviceListResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceListResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "devices")
  List<TrackableDevice> get devices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceListResponseCopyWith<DeviceListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceListResponseCopyWith<$Res> {
  factory $DeviceListResponseCopyWith(
          DeviceListResponse value, $Res Function(DeviceListResponse) then) =
      _$DeviceListResponseCopyWithImpl<$Res, DeviceListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "devices") List<TrackableDevice> devices});
}

/// @nodoc
class _$DeviceListResponseCopyWithImpl<$Res, $Val extends DeviceListResponse>
    implements $DeviceListResponseCopyWith<$Res> {
  _$DeviceListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? devices = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      devices: null == devices
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<TrackableDevice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceListResponseCopyWith<$Res>
    implements $DeviceListResponseCopyWith<$Res> {
  factory _$$_DeviceListResponseCopyWith(_$_DeviceListResponse value,
          $Res Function(_$_DeviceListResponse) then) =
      __$$_DeviceListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "devices") List<TrackableDevice> devices});
}

/// @nodoc
class __$$_DeviceListResponseCopyWithImpl<$Res>
    extends _$DeviceListResponseCopyWithImpl<$Res, _$_DeviceListResponse>
    implements _$$_DeviceListResponseCopyWith<$Res> {
  __$$_DeviceListResponseCopyWithImpl(
      _$_DeviceListResponse _value, $Res Function(_$_DeviceListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? devices = null,
  }) {
    return _then(_$_DeviceListResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<TrackableDevice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceListResponse extends _DeviceListResponse {
  const _$_DeviceListResponse(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "code") this.code = -1,
      @JsonKey(name: "message") this.message = "",
      @JsonKey(name: "devices") required final List<TrackableDevice> devices})
      : _devices = devices,
        super._();

  factory _$_DeviceListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceListResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<TrackableDevice> _devices;
  @override
  @JsonKey(name: "devices")
  List<TrackableDevice> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  @override
  String toString() {
    return 'DeviceListResponse(status: $status, code: $code, message: $message, devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceListResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message,
      const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceListResponseCopyWith<_$_DeviceListResponse> get copyWith =>
      __$$_DeviceListResponseCopyWithImpl<_$_DeviceListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceListResponseToJson(
      this,
    );
  }
}

abstract class _DeviceListResponse extends DeviceListResponse {
  const factory _DeviceListResponse(
          {@JsonKey(name: "status")
              final bool status,
          @JsonKey(name: "code")
              final int code,
          @JsonKey(name: "message")
              final String message,
          @JsonKey(name: "devices")
              required final List<TrackableDevice> devices}) =
      _$_DeviceListResponse;
  const _DeviceListResponse._() : super._();

  factory _DeviceListResponse.fromJson(Map<String, dynamic> json) =
      _$_DeviceListResponse.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "devices")
  List<TrackableDevice> get devices;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceListResponseCopyWith<_$_DeviceListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
