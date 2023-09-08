import 'package:dcbase/dcbase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:g_tracker/AppComponents/endpoints.dart';
import 'package:g_tracker/widgets/common_logo.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../../AppComponents/text_styles.dart';
import '../../../widgets/widgets.dart';
import '../controller/forget_pin4_vm.dart';

class ForgotPin4 extends StatelessWidget {
  const ForgotPin4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseWidget(
          model: ForgetPin4ScreenVm(),
          onModelReady: (model) {},
          builder: (context, modal, child) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CommonLogo(
                      title: "Forgot Login PIN",
                      image2: "assets/images/Wiz4.png",
                      width: 157.w,
                    ),
                    NormalText3(
                      title: "Confirm Your Login PIN",
                      textStyle: TextStyles.black16px700,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
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
                            fontSize: 15.sp,
                            height: 2.5.h,
                            color: Colors.black,
                          ),
                          onChanged: (pin) {
                            if (kDebugMode) {
                              print("Changed: $pin");
                            }
                            modal.confirmedMpin = pin;
                          },
                          onCompleted: (pin) {
                            if (kDebugMode) {
                              print("Completed: $pin");
                            }
                          }),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomButton(
                      onPress: () {
                        if (modal.confirmedMpin.isNotEmpty) {
                          if (modal.enteredMpin == modal.confirmedMpin) {
                            modal.confirmMPin(
                                context,
                                Endpoints.baseUrl + Endpoints.confirmNewMpin,
                                modal.confirmedMpin,
                                modal.phoneController.text);
                          } else {
                            final snackBar = SnackBar(
                              content:
                                  const Text('Please Enter a 4 digit M-PIN'),
                              action: SnackBarAction(
                                label: '',
                                onPressed: () {},
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        } else {
                          final snackBar = SnackBar(
                            content: const Text('Please Enter a 4 digit M-PIN'),
                            action: SnackBarAction(
                              label: '',
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                        // Get.toNamed(LoginScreen.routeName);
                      },
                      title: "Next",
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
