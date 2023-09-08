import 'package:dcbase/dcbase_base_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/extensions/context_extensions.dart';
import 'package:g_tracker/extensions/string_extensions.dart';
import 'package:g_tracker/localStore/local_cache.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/auth/auth_page_header.dart';
import 'package:g_tracker/ui/auth/otp/otp_vm.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpVerifyScreen extends ConsumerStatefulWidget {
  final LoginRequest loginRequest;
  final String parentPage;

  const OtpVerifyScreen({super.key, required this.loginRequest,
    this.parentPage = OtpParentPage.login,});

  @override
  ConsumerState<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends ConsumerState<OtpVerifyScreen> {

  final otpLength = 6;
  @override
  Widget build(BuildContext context) {
   // var parentPage = ModalRoute.of(context)!.settings.name;
    return Scaffold(
      appBar: AppBar(),
      body: BaseWidget<OtpVm>(
          model: OtpVm(ref.watch(authRepositoryProvider), widget.loginRequest),
          onModelReady: (model) {},
          builder: (context, model, child) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  if (widget.parentPage == OtpParentPage.forgotPin)
                    const AuthPageHeader(
                        title: "Forgot login PIN",
                        label: "Enter OTP",
                        stepImage: "assets/images/wiz31.png")
                  else
                    const AuthPageHeader(
                        title: "Setup Your Account",
                        label: "Enter OTP",
                        stepImage: "assets/images/bigwiz2.png"),
                  SizedBox(height: 16.h),
                  SizedBox(
                    width: 313.w,
                    height: 44.h,
                    child: OTPTextField(
                        keyboardType: TextInputType.number,
                        otpFieldStyle: OtpFieldStyle(
                          backgroundColor: const Color(0xFFEBECEF),
                        ),
                        length: otpLength,
                        width: 313.w,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldWidth: 49.w,
                        fieldStyle: FieldStyle.box,
                        outlineBorderRadius: 12.r,
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.black,
                        ),
                        onChanged: (pin) {
                          model.enteredPin = pin;
                        },
                        onCompleted: (pin) {
                          if (pin.length == otpLength) {
                            model.enteredPin = pin;
                            model.verifyOtpA(
                                onSuccess: _onSuccess, onFailure: _onFailure);
                          }
                        }),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    "An OTP has been sent to ${model.loginRequest.countryCode}${model.loginRequest.phoneNumber}",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16.h),
                  FractionallySizedBox(
                    widthFactor: 0.9,
                    child: ProgressAwareView(
                      screenState: model.screenStateNotifier,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(56.h)),
                        onPressed: () {
                          if (model.enteredPin.isNotNullOrBlank()) {
                            if (model.enteredPin.length < otpLength) {
                              context.showSnackBar(
                                  message: 'Please Enter a 6 digit OTP');
                            } else {
                              model.verifyOtpA(
                                onSuccess: _onSuccess,
                                onFailure: _onFailure,
                              );
                            }
                          } else {
                            context.showSnackBar(message: 'Please Enter OTP');
                          }
                        },
                        child: const Text("Next"),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't get OTP?",
                        style: TextStyles.didNotGetOTPText1Style,
                      ),
                      TextButton(
                        onPressed: () {
                          model.resendOtp(
                              request: widget.loginRequest,
                              onSuccess: (String message) {
                                context.showSnackBar(message: message);
                              },
                              onFailure: _onFailure);
                        },
                        child: Text(
                          "Retry Now ",
                          style: TextStyles.signUpTextStyle,
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }

  void _onSuccess(String message) {
    LocalCache.loginRequest = widget.loginRequest;
    context.showSnackBar(message: message);
    if (widget.parentPage == OtpParentPage.login) {
      Navigator.pushNamed(context, RouteName.userNameScreen);
    } else {
      Navigator.pushNamed(context, RouteName.setMpinScreen, arguments: 2);
    }
  }

  void _onFailure(String message) {
    context.showErrorSnackBar(message: message);
  }
}

class OtpParentPage {
  const OtpParentPage._();

  static const String login = "login";
  static const String forgotPin = "forgot-pin";
}
