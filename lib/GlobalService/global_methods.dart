// ignore_for_file: avoid_print

import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:g_tracker/AppComponents/static_components.dart';

class GlobalMethod {
  static void getDeviceType() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    deviceInfoPlugin.deviceInfo;
    print("Device Information ${deviceInfoPlugin.deviceInfo}");

    try {
      if (Platform.isAndroid) {
        var deviceInformation = await deviceInfoPlugin.androidInfo;
        print("Android ID ${deviceInformation.manufacturer}");
        UserCredentials.deviceType = 'Android';
      } else if (Platform.isIOS) {
        var deviceInformation = await deviceInfoPlugin.iosInfo;
        print(deviceInformation.systemName);
        UserCredentials.deviceType = 'IOS';
        print(UserCredentials.deviceType.toString());
      } else {
        print("Incompatible");
      }
    } catch (e) {
      print(e);
    }
  }
}
