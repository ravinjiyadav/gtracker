// ignore_for_file: avoid_print

import 'package:dcbase/dcbase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/ui/auth/auth_page_header.dart';
import 'package:g_tracker/ui/auth/mpin/entry/login_pin_vm.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../../../../AppComponents/app_colors.dart' as ac;
import '../../../../network/network_provider.dart';
import '../../../../widgets/widgets.dart';

import 'package:g_tracker/network/models/auth_models.dart';



class LoginPinScreen extends ConsumerStatefulWidget {
  final LoginRequest request;

  const LoginPinScreen({
    Key? key,
    required this.request,
  }) : super(key: key);

  @override
  ConsumerState<LoginPinScreen> createState() => _LoginPinScreenState();
}

class _LoginPinScreenState extends ConsumerState<LoginPinScreen> {
  late LoginPinScreenVm loginPinModel;
  String? enteredMpin;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("links");
    print(ref.read(linkBoxProvider).link());

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: BaseWidget<LoginPinScreenVm>(
          model: LoginPinScreenVm(ref.watch(authRepositoryProvider),
              ref.watch(tokenBoxRepositoryProvider),ref.watch(userBoxProvider),ref.watch(linkBoxProvider)),
          onModelReady: (model) {
            loginPinModel = model;
          },
          builder: (context, model, child) {
            return ScreenStateAwareView(
                screenState: model.screenStateNotifier,
                haveInPlaceApiProgress: true,
                child: Column(
                  children: [
                    const AuthPageHeader(title: "Enter Your M-PIN"),
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
                          print("Changed: " + pin);
                          enteredMpin = pin;
                        },
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 16.w),
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: _forgotPin,
                        child: const Text("Forgot Login PIN ?"),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    ProgressAwareView(
                      screenState: model.screenStateNotifier,
                      child: CustomButton(
                        onPress: _proceed,
                        title: "Go",
                        color: ac.AppColors.themeColor,
                      ),
                    ),
                  ],
                ));
          },
        ),
      ),
    );
  }

  void _proceed() {
    if (enteredMpin?.isNotEmpty ?? false) {
      if (enteredMpin!.length == 4) {
        loginPinModel.mpinLogin(
            phoneNumber: widget.request.phoneNumber,
            countryCode: widget.request.countryCode,
            mpin: int.parse(enteredMpin!),
            onSuccess: (String message) {
              context.showSnackBar(message: message);
              Navigator.pushNamedAndRemoveUntil(
                  context, RouteName.dashBoardScreen, (route) => false);
            },
            onFailure: (String error) {
              context.showSnackBar(message: error);
            });
      } else {
        context.showSnackBar(message: 'Please Enter 4 digit OTP');
      }
    } else {
      context.showSnackBar(message: 'Please Enter OTP');
    }
  }

  void _forgotPin() {
    loginPinModel.forgotPin(
        request: widget.request,
        onSuccess: (String message) {
          context.showSnackBar(message: message);
          Navigator.pushNamed(context, RouteName.forgotMpinScreen,
              arguments: widget.request);
        },
        onFailure: _onFailure);
  }

  void _onFailure(String message) {
    context.showErrorSnackBar(message: message);
  }
}
