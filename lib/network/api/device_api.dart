import 'package:g_tracker/network/models/response/basic_response.dart';
import 'package:g_tracker/network/models/response/device/device_response.dart';
import 'package:g_tracker/network/models/response/device/trackable_device.dart';

abstract class DeviceApi {
  Future<List<TrackableDevice>> devices();

  Future<DeviceResponse> addDevice({required String deviceIdentifier});

  Future<BasicResponse> deleteDevice({required int deviceId});
}
