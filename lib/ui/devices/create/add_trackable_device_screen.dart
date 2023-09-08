import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/devices/create/add_trackable_device_screen_vm.dart';
import 'package:g_tracker/ui/devices/create/scan_qr_code_screen.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:g_tracker/widgets/custom_button.dart';
import 'package:g_tracker/widgets/simple_text_field.dart';
import 'package:g_tracker/AppComponents/app_colors.dart' as ac;

class AddTrackableDeviceScreen extends ConsumerStatefulWidget {
  const AddTrackableDeviceScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AddTrackableDeviceScreen> createState() =>
      _AddTrackableDeviceScreenState();
}

class _AddTrackableDeviceScreenState
    extends ConsumerState<AddTrackableDeviceScreen> {
  late final AddTrackableDeviceScreenVm deviceScreenVm;

  TextEditingController deviceNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Device"),
        centerTitle: true,
      ),
      body: BaseWidget<AddTrackableDeviceScreenVm>(
        model: AddTrackableDeviceScreenVm(ref.read(deviceRepositoryProvider)),
        onModelReady: (model) {
          deviceScreenVm = model;
        },
        builder: (context, model, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 48.h,
                  ),
                  SimpleTextField(
                    hint: "Enter Devices Number",
                    controller: deviceNumberController,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 1.h,
                        color: ac.AppColors.hintColor,
                      )),
                      Text(
                        "  Or  ",
                        style: TextStyles.black16px400
                            .copyWith(color: ac.AppColors.hintColor),
                      ),
                      Expanded(
                          child: Container(
                        height: 1.h,
                        color: ac.AppColors.hintColor,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ScanQRCodeScreen())).then((value) {
                        if (value != null) {
                          deviceNumberController.text = value;
                        }
                      });
                    },
                    child: Icon(
                      Icons.qr_code_scanner_outlined,
                      size: 30.sp,
                      color: ac.AppColors.hintColor,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  ProgressAwareView(
                    screenState: model.screenStateNotifier,
                    child: CustomButton(
                      onPress: () async {
                        FocusManager.instance.primaryFocus?.unfocus();

                        if (deviceNumberController.text.isNotEmpty) {
                          model.addDevice(
                              deviceIdentifier: deviceNumberController.text,
                              onSuccess: (response) {
                                deviceNumberController.clear();
                                context.showSnackBar(message: response.message);

                                Navigator.pop(context, response.device);
                              },
                              onFailure: (val) {
                                context.showSnackBar(message: val);
                              });
                        } else {
                          context.showSnackBar(
                              message: "Please Enter Devices Number.");
                        }
                      },
                      title: "Save",
                      color: ac.AppColors.themeColor,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
