// ignore_for_file: avoid_print

import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/network/models/request/mpin/change_login_pin_request.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/auth/auth_page_header.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:g_tracker/widgets/common_button.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import '../../../../../AppComponents/app_colors.dart' as ac;
import '../../../../../widgets/widgets.dart';
import 'confirm_change_pin_controller.dart';

class ConfirmChangePinScreen extends ConsumerStatefulWidget {
  final String logInPin;
  final String newPin;

  const ConfirmChangePinScreen({
    Key? key,
    required this.logInPin,
    required this.newPin,
  }) : super(key: key);

  @override
  ConsumerState<ConfirmChangePinScreen> createState() =>
      _ConfirmChangePinScreenState();
}

class _ConfirmChangePinScreenState
    extends ConsumerState<ConfirmChangePinScreen> {
  late ConfirmChangePinVm loginPinModel;

  String? confirmMPin;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    logD("old Pin ${widget.logInPin}");
    logD("old Pin ${widget.newPin}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: BaseWidget<ConfirmChangePinVm>(
          model: ConfirmChangePinVm(ref.read(settingRepositoryProvider)),
          onModelReady: (model) {
            loginPinModel = model;
          },
          builder: (context, model, child) {
            return ScreenStateAwareView(
                screenState: model.screenStateNotifier,
                haveInPlaceApiProgress: true,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const AuthPageHeader(
                          title: "Change PIN",
                          label: "Confirm Your New Login PIN",
                          stepImage: "assets/images/wiz33.png"),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: 313.w,
                        height: 66.h,
                        child: OTPTextField(
                          otpFieldStyle: OtpFieldStyle(
                            backgroundColor: const Color(0xFFEBECEF),
                          ),
                          length: 4,
                          width: 313.w,
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldWidth: 66.w,
                          fieldStyle: FieldStyle.box,
                          outlineBorderRadius: 12.r,
                          style: TextStyle(
                            fontSize: 17.sp,
                            height: 2.3.h,
                            color: Colors.black,
                          ),
                          onChanged: (pin) {
                            print("Changed: $pin");
                            confirmMPin = pin;
                          },
                          onCompleted: (pin) {
                            print("Completed: $pin");
                          },
                        ),
                      ),
                      SizedBox(height: 15.h),
                      ProgressAwareView(
                        screenState: model.screenStateNotifier,
                        child: Padding(
                          padding: EdgeInsets.only(left: 30.w, right: 30.w),
                          child: CommonButton(
                            onPress: () {
                              FocusManager.instance.primaryFocus?.unfocus();

                              if ((confirmMPin?.isEmpty ?? true) ||
                                  confirmMPin!.length != 4) {
                                context.showSnackBar(
                                    message: "Please Enter 4 digit Login PIN.");
                              } else if (widget.newPin != confirmMPin) {
                                context.showSnackBar(
                                    message: "Confirm PIN Not Matched.");
                              } else {
                                model.changeLogInPin(
                                  request: ChangeLoginPinRequest(
                                    oldMpin: int.parse(widget.logInPin!),
                                    mpin: int.parse(confirmMPin!),
                                  ),
                                  onSuccess: _onSuccess,
                                  onFailure: _onFailure,
                                );
                              }

                              // if ((confirmMPin?.isNotEmpty ?? false) &&
                              //     confirmMPin!.length == 4) {
                              //   model.changeLogInPin(
                              //     request: ChangeLoginPinRequest(
                              //       oldMpin: int.parse(logInPin!),
                              //       mpin: int.parse(confirmMPin!),
                              //     ),
                              //     onSuccess: _onSuccess,
                              //     onFailure: _onFailure,
                              //   );
                              // } else {
                              //   context.showSnackBar(
                              //       message: "Please Enter 4 digit Login PIN.");
                              // }
                            },
                            title: "Next",
                            color: ac.AppColors.themeColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
          },
        ),
      ),
    );
  }

  void _onSuccess(String message) {
    context.showSnackBar(message: message);
    Navigator.pushReplacementNamed(context, RouteName.dashBoardScreen);
  }

  void _onFailure(String message) {
    context.showErrorSnackBar(message: message);
  }
}
