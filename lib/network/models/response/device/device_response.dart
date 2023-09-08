import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:g_tracker/network/models/response/device/trackable_device.dart';

part 'device_response.freezed.dart';

part 'device_response.g.dart';

@freezed
class DeviceResponse with _$DeviceResponse {
  const DeviceResponse._();

  factory DeviceResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceResponseFromJson(json);

  const factory DeviceResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "device") required TrackableDevice device,
  }) = _DeviceResponse;
}

@freezed
class DeviceListResponse with _$DeviceListResponse {
  const DeviceListResponse._();

  factory DeviceListResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceListResponseFromJson(json);

  const factory DeviceListResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "devices") required List<TrackableDevice> devices,
  }) = _DeviceListResponse;
}
