import 'package:dcbase/dcbase.dart';
import 'package:g_tracker/network/api/device_api.dart';
import 'package:g_tracker/network/end_points.dart';
import 'package:g_tracker/network/models/response/basic_response.dart';
import 'package:g_tracker/network/models/response/device/device_response.dart';
import 'package:g_tracker/network/models/response/device/trackable_device.dart';

class DeviceRepository extends BaseRepository implements DeviceApi {
  DeviceRepository({required HttpService httpService}) : super(httpService);

  @override
  Future<DeviceResponse> addDevice({required String deviceIdentifier}) {
    return httpService.post(Endpoints.device.addDevice, data: {
      "imei": deviceIdentifier
    }).then((value) => DeviceResponse.fromJson(value));
  }

  @override
  Future<List<TrackableDevice>> devices() {
    return httpService
        .get(Endpoints.device.devices)
        .then((value) => DeviceListResponse.fromJson(value).devices);
  }

  @override
  Future<BasicResponse> deleteDevice({required int deviceId}) {
    return httpService
        .delete(Endpoints.device.deleteDevice(deviceId))
        .then((value) => BasicResponse.fromJson(value));
  }
}
