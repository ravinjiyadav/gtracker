import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/Helper/routes/route_name.dart';
import 'package:g_tracker/ui/auth/auth_page_header.dart';
import 'package:g_tracker/widgets/common_button.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import '../../../../../AppComponents/app_colors.dart' as ac;

class NewPinScreen extends StatefulWidget {
  final String logInMPin;

  const NewPinScreen({
    Key? key,
    required this.logInMPin,
  }) : super(key: key);

  @override
  State<NewPinScreen> createState() => _NewPinScreenState();
}

class _NewPinScreenState extends State<NewPinScreen> {
  String? enteredMPin;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    logD("Old Pin ${widget.logInMPin}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AuthPageHeader(
                  title: "Change PIN",
                  label: "Enter Your New Login PIN",
                  stepImage: "assets/images/wiz32.png"),
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
                    enteredMPin = pin;
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
              ),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.w),
                child: CommonButton(
                  onPress: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if ((enteredMPin?.isNotEmpty ?? false) &&
                        enteredMPin!.length == 4) {
                      Navigator.pushNamed(context, RouteName.confirmChangePinScreen,
                          arguments: {
                            "logInPin": widget.logInMPin,
                            "newPin": enteredMPin
                          }

                          );
                    } else {
                      context.showSnackBar(message: "Please Enter 4 digit PIN.");
                    }
                  },
                  title: "Next",
                  color: ac.AppColors.themeColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
