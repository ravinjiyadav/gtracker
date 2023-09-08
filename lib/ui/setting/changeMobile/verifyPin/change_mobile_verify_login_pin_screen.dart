// ignore_for_file: avoid_print

import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/auth/auth_page_header.dart';
import 'package:g_tracker/ui/auth/mpin/entry/login_pin_vm.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:g_tracker/widgets/common_button.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import '../../../../../AppComponents/app_colors.dart' as ac;
import '../../../../../widgets/widgets.dart';

class ChangeMobileVerifyLoginPinScreen extends ConsumerStatefulWidget {
  const ChangeMobileVerifyLoginPinScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ChangeMobileVerifyLoginPinScreen> createState() =>
      _ChangeMobileVerifyLoginPinScreenState();
}

class _ChangeMobileVerifyLoginPinScreenState
    extends ConsumerState<ChangeMobileVerifyLoginPinScreen> {
  late LoginPinScreenVm loginPinModel;

  String? enteredMPin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: BaseWidget<LoginPinScreenVm>(
          model: LoginPinScreenVm(ref.read(authRepositoryProvider), ref.read(tokenBoxRepositoryProvider),ref.watch(userBoxProvider),ref.watch(linkBoxProvider)),
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
                          title: "Change Mobile Number",
                          label: "Enter Your Login PIN",
                          stepImage: "assets/images/wiz31.png"),
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
                            enteredMPin = pin;
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
                              if ((enteredMPin?.isNotEmpty ?? false) &&
                                  enteredMPin!.length == 4) {
                                logD("Forward to login");
                                final userBox = ref.watch(userBoxProvider);
                                model.mpinLogin(
                                    phoneNumber: userBox.user()!.mobile,
                                    countryCode: userBox.user()!.countryCode,
                                    mpin: int.parse(enteredMPin!),
                                    onSuccess: _onSuccess,
                                    onFailure: _onFailure);
                              } else {
                                context.showSnackBar(
                                    message: "Please Enter 4 digit Login PIN.");
                              }
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
    Navigator.pushNamed(
      context,
      RouteName.changeMobileNumberScreen,
    );
  }

  void _onFailure(String message) {
    context.showErrorSnackBar(message: message);
  }
}
