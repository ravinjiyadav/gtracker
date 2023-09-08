import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/endpoints.dart';
import 'package:g_tracker/modules/ForgotPIN/controller/forget_pin3_vm.dart';
import 'package:g_tracker/widgets/common_logo.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../../../AppComponents/text_styles.dart';
import '../../../widgets/widgets.dart';

class ForgotPin3 extends StatelessWidget {
  const ForgotPin3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseWidget(
          model: ForgetPin3ScreenVm(),
          onModelReady: (modal) {},
          builder: (context, modal, child) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CommonLogo(
                      title: "Forgot Login PIN",
                      image2: "assets/images/wiz3.png",
                      width: 157.w,
                    ),
                    NormalText3(
                      title: "Setup Your Login  PIN",
                      textStyle: TextStyles.black16px700,
                    ),
                    SizedBox(
                      height: 13.h,
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
                            // ignore: avoid_print
                            print("Changed: $pin");
                            modal.enteredMpin = pin;
                          },
                          onCompleted: (pin) {
                            // ignore: avoid_print
                            print("Completed: $pin");
                          }),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomButton(
                      onPress: () {
                        if (modal.enteredMpin
                            .toString()
                            .isNotEmpty) {
                          // Get.toNamed(ForgotPin4.routeName);
                          if (modal.enteredMpin
                                  .toString()
                                  .length ==
                              4) {
                            modal.setupNewMpin(
                                context,
                                Endpoints.baseUrl + Endpoints.setupNewMPin,
                                modal.phoneController.text,
                                modal.enteredMpin.toString());
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
                            content: const Text('Please Enter a new M-PIN'),
                            action: SnackBarAction(
                              label: '',
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
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
