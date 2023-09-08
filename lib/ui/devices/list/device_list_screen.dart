import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/common_dialog.dart';
import 'package:g_tracker/network/models/response/device/trackable_device.dart';
import 'package:g_tracker/ui/devices/list/device_item_view.dart';
import 'package:g_tracker/ui/devices/list/devices_screen_vm.dart';
import 'package:g_tracker/widgets/common_button.dart';
import 'package:g_tracker/widgets/custom_alert_dialog.dart';

import '../../../Helper/routes/route_name.dart';
import '../../../network/network_provider.dart';
import 'package:g_tracker/AppComponents/app_colors.dart' as ac;

class DeviceListScreen extends ConsumerStatefulWidget {
  final bool showSkip;

  const DeviceListScreen({
    Key? key,
    this.showSkip = false,
  }) : super(key: key);

  @override
  ConsumerState<DeviceListScreen> createState() => _DeviceListScreenState();
}

class _DeviceListScreenState extends ConsumerState<DeviceListScreen> {
  late final DevicesScreenVm devicesScreenVm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Devices"),
        actions: [
          widget.showSkip == true
              ? TextButton(
                  onPressed: () {
                    _navigateToMemberListScreen();
                  },
                  child: const Text("Skip"))
              : SizedBox()
        ],
      ),
      body: BaseWidget(
        model: DevicesScreenVm(ref.read(deviceRepositoryProvider)),
        onModelReady: (model) {
          devicesScreenVm = model;
          model.fetchDevices();
        },
        builder: (context, model, child) {
          return ScreenStateAwareView(
            screenState: model.screenStateNotifier,
            empty: const Center(
              child: Text("No Device"),
            ),
            progress: Center(
              child: CircularProgressIndicator(),
            ),
            child: ValueListenableBuilder<List<TrackableDevice>>(
              valueListenable: model.devicesNotifier,
              builder: (context, devices, child) {
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  separatorBuilder: ((context, index) =>
                      SizedBox(height: 12.h)),
                  itemBuilder: (context, index) {
                    final device = devices[index];
                    return DeviceItemView(
                      device: device,
                      onDeleteTap: () {
                        _showConfirmDialog(context,index, device);
                      },
                    );
                  },
                  itemCount: devices.length,
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 24.w),
              widget.showSkip
                  ? Expanded(
                      child: CommonButton(
                      onPress: () {
                        _navigateToMemberListScreen();
                      },
                      title: "Next",
                      color: ac.AppColors.themeColor,
                    ))
                  : const SizedBox(),
              widget.showSkip ? SizedBox(width: 16.w) : const SizedBox(),
              Expanded(
                  child: CommonButton(
                onPress: () {
                  _navigateToAddDeviceScreen();
                },
                title: "Add +",
                color: ac.AppColors.themeColor,
              )),
              SizedBox(width: 24.w),
            ],
          ),
        ),
      ),
    );
  }

  // void _showConfirmDialog(int index, TrackableDevice device) {
  //   // TODO show confirm dialog then delete
  //   CommonDialog.showLoadingDialog(context);
  //   devicesScreenVm.deleteDevice(
  //     index: index,
  //     device: device,
  //     onFailure: _onFailure,
  //     onSuccess: _onSuccess,
  //   );
  // }

  Future<dynamic> _showConfirmDialog(
      BuildContext context, int index, TrackableDevice device) {
    return showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return CustomAlertDialog(
          heading: "Remove Device",
          subHeading: "Are You Sure\nYou Want To Remove Device?",
          onYesTab: () {
            Navigator.pop(context);
            CommonDialog.showLoadingDialog(context);
            devicesScreenVm.deleteDevice(
              index: index,
              device: device,
              onFailure: _onFailure,
              onSuccess: _onSuccess,
            );
          },
        );
      },
    );
  }



  void _onFailure(String message) {
    Navigator.pop(context);
    context.showErrorSnackBar(message: message);
  }
  void _onSuccess(String message) {
    Navigator.pop(context);

    context.showErrorSnackBar(message: message);
  }

  void _navigateToAddDeviceScreen() {
    Navigator.pushNamed(
      context,
      RouteName.addTrackableDeviceScreen,
    ).then((value) {
      if (value != null && value is TrackableDevice) {
        devicesScreenVm.updateDeviceList(value);
      }
    });
  }

  void _navigateToMemberListScreen() {
    Navigator.pushReplacementNamed(
      context,
      RouteName.memberListScreen,
    ).then((value) {});
  }
}
