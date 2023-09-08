import 'package:dcbase/dcbase.dart';
import 'package:flutter/foundation.dart';
import 'package:g_tracker/network/models/response/device/device_response.dart';
import 'package:g_tracker/network/models/response/device/trackable_device.dart';
import 'package:g_tracker/network/repository/device_repository.dart';

class AddTrackableDeviceScreenVm extends BaseViewModel {
  final DeviceRepository deviceRepository;

  AddTrackableDeviceScreenVm(this.deviceRepository);

  Future<void> addDevice({
    required String deviceIdentifier,
    ValueChanged<String>? onFailure,
    ValueChanged<DeviceResponse>? onSuccess,
  }) async {
    changeUiState(ScreenState.apiProgress);
    await deviceRepository
        .addDevice(deviceIdentifier: deviceIdentifier)
        .then((value) {
      onSuccess?.call(value);
    }).onError((error, stackTrace) {
      logD("Error adding device $error", stackTrace: stackTrace);
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    }).whenComplete(() => changeUiState(ScreenState.content));
  }


}
