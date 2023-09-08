import 'package:dcbase/dcbase.dart';
import 'package:flutter/cupertino.dart';
import 'package:g_tracker/network/models/response/device/trackable_device.dart';
import 'package:g_tracker/network/repository/device_repository.dart';

class DevicesScreenVm extends BaseViewModel {
  final DeviceRepository deviceRepository;
  final ValueNotifier<List<TrackableDevice>> devicesNotifier =
      ValueNotifier([]);

  DevicesScreenVm(this.deviceRepository);

  Future<void> fetchDevices({
    ValueChanged<String>? onFailure,
  }) async {
    changeUiState(ScreenState.progress);
    await deviceRepository.devices().then((value) {
      devicesNotifier.value = value;
      if (value.isEmpty) {
        changeUiState(ScreenState.empty);
      } else {
        changeUiState(ScreenState.content);
      }
    }).onError((error, stackTrace) {
      logD("Devices fetch error $error", stackTrace: stackTrace);
      if (devicesNotifier.value.isEmpty) {
        changeUiState(ScreenState.error);
      }
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    });
  }

  Future<void> deleteDevice({
    required int index,
    required TrackableDevice device,
    ValueChanged<String>? onFailure,
    ValueChanged<String>? onSuccess,
  }) async {
    deviceRepository.deleteDevice(deviceId: device.id).then((value) {
      logD(value.message);

      final deviceList = devicesNotifier.value.toList();
      deviceList.removeAt(index);
      devicesNotifier.value = deviceList;
      onSuccess?.call(value.message);

      if (devicesNotifier.value.isEmpty) {
        changeUiState(ScreenState.empty);
      }
    }).onError((error, stackTrace) {
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    });
  }

  void updateDeviceList(TrackableDevice device) {
    if (devicesNotifier.value.isNotEmpty) {
      final list = devicesNotifier.value.toList();
      list.add(device);
      devicesNotifier.value = list;
    } else {
      devicesNotifier.value = [device];
      changeUiState(ScreenState.content);
    }
  }
}
