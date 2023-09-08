import 'package:freezed_annotation/freezed_annotation.dart';

part 'trackable_device.freezed.dart';

part 'trackable_device.g.dart';

@freezed
class TrackableDevice with _$TrackableDevice {
  const TrackableDevice._();

  factory TrackableDevice.fromJson(Map<String, dynamic> json) =>
      _$TrackableDeviceFromJson(json);

  const factory TrackableDevice({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "imei") required String imei,
    @JsonKey(name: "user_id") @Default(-1) int userId,
  }) = _TrackableDevice;
}
