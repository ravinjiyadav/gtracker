import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/Helper/routes/route_name.dart';
import 'package:g_tracker/network/models/request/auth/login_request.dart';
import 'package:g_tracker/network/models/request/otp/verify_otp_request.dart';
import 'package:g_tracker/ui/auth/auth_page_header.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:g_tracker/widgets/common_button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../../../../AppComponents/app_colors.dart' as ac;
import '../../../../network/network_provider.dart';
import '../../../../widgets/widgets.dart';
import 'verify_otp_controller.dart';

class ChangeMobileVerifyOtpScreen extends ConsumerStatefulWidget {

  final String mobile;
  final String countryCode;


  const ChangeMobileVerifyOtpScreen({
    Key? key,
    required this.mobile,
    required this.countryCode,
  }) : super(key: key);





  @override
  ConsumerState<ChangeMobileVerifyOtpScreen> createState() =>
      _ChangeMobileVerifyOtpScreenState();
}

class _ChangeMobileVerifyOtpScreenState
    extends ConsumerState<ChangeMobileVerifyOtpScreen> {
  final otpLength = 6;
  String? enteredPin;

 // String? mobile;
//  String? countryCode;

  @override
  Widget build(BuildContext context) {
    // var args = ModalRoute.of(context)?.settings.arguments as Map;
    // mobile = args["mobile"];
    // countryCode = args["countryCode"];
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: BaseWidget<VerifyOtpController>(
          model: VerifyOtpController(ref.read(settingRepositoryProvider)),
          onModelReady: (model) {},
          builder: (context, model, child) {
            return SingleChildScrollView(
              child: ScreenStateAwareView(
                screenState: model.screenStateNotifier,
                haveInPlaceApiProgress: true,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const AuthPageHeader(
                          title: "Change Mobile Number",
                          label: "Enter OTP",
                          stepImage: "assets/images/wiz33.png"),
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
                              enteredPin = pin;
                            },
                            onCompleted: (pin) {
                              if (pin.length == otpLength) {
                                enteredPin = pin;
                              }
                            }),
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        "An OTP has been sent to ${widget.countryCode}${widget.mobile}",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16.h),
                      ProgressAwareView(
                        screenState: model.screenStateNotifier,
                        child: Padding(
                          padding: EdgeInsets.only(left: 30.w, right: 30.w),
                          child: CommonButton(
                            onPress: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              if ((enteredPin?.isNotEmpty ?? false) &&
                                  enteredPin?.length == 6) {
                                model.verifyOtp(
                                    request: VerifyOtpRequest(
                                        otp: int.parse(enteredPin!),
                                        mobile: widget.mobile,
                                        countryCode: widget.countryCode),
                                    onSuccess: (String message) {
                                      context.showSnackBar(message: message);
                                      Navigator.pushReplacementNamed(
                                          context, RouteName.dashBoardScreen);
                                    },
                                    onFailure: (String message) {
                                      context.showSnackBar(message: message);
                                    });
                              } else {
                                context.showSnackBar(
                                    message: "Please Enter 6 Digit Otp.");
                              }
                              logD("pin is $enteredPin");
                            },
                            title: "Next",
                            color: ac.AppColors.themeColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
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
                                  request: LoginRequest(
                                    phoneNumber: widget.mobile,
                                    countryCode: widget.countryCode,
                                  ),
                                  onSuccess: (String message) {
                                    context.showSnackBar(message: message);
                                  },
                                  onFailure: (String message) {
                                    context.showSnackBar(message: message);
                                  });
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
                ),
              ),
            );
          }),
    );
  }
}
