import 'package:dcbase/dcbase_base_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:g_tracker/AppComponents/app_colors.dart';
import 'package:g_tracker/AppComponents/endpoints.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/widgets/common_logo.dart';
import 'package:g_tracker/widgets/widgets.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../controller/forget_pin2_vm.dart';

class ForgetPin2 extends StatelessWidget {
  const ForgetPin2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseWidget(
          model: ForgetPin2ScreenVm(),
          onModelReady: (model) {},
          builder: (context, ref, child) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  CommonLogo(
                    title: "Forget Login PIN",
                    image2: "assets/images/Wiz2.png",
                    width: 157.w,
                  ),
                  SizedBox(height: 2.h),
                  NormalText3(
                    title: "Enter OTP",
                    textStyle: TextStyles.black16px700,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 313.w,
                    height: 44.h,
                    child: OTPTextField(
                        otpFieldStyle: OtpFieldStyle(
                          backgroundColor: const Color(0xFFEBECEF),
                        ),
                        length: 6,
                        width: 313.w,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldWidth: 44.w,
                        fieldStyle: FieldStyle.box,
                        outlineBorderRadius: 12.r,
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.black,
                        ),
                        onChanged: (pin) {
                          // ignore: avoid_print
                          print("Changed: $pin");
                          ref.enteredPin6 = pin;
                        },
                        onCompleted: (pin) {
                          // ignore: avoid_print
                          print("Completed: $pin");
                        }),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  NormalText3(
                    title:
                        "An OTP has been sent to +91${ref.phoneController.text}",
                    textStyle: TextStyles.normalHeadingText1Style,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomButton(
                    onPress: () {
                      if (ref.enteredPin6.toString().isNotEmpty) {
                        if (ref.enteredPin6.toString().length == 6) {
                          ref.enterOTPForForgetPin(
                              context,
                              Endpoints.baseUrl + Endpoints.verifyOTPforgetPin,
                              ref.phoneController.text,
                              ref.enteredPin6.toString());
                        } else {
                          final snackBar = SnackBar(
                            content: const Text('Please Enter a 6 digit OTP'),
                            action: SnackBarAction(
                              label: '',
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      } else {
                        final snackBar = SnackBar(
                          content: const Text('Please Enter OTP'),
                          action: SnackBarAction(
                            label: '',
                            onPressed: () {},
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    title: "Next",
                    color: AppColors.themeColor,
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
                        onPressed: () {},
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
}
