import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/ui/auth/auth_page_header.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class MpinScreen extends StatefulWidget {
  final ValueNotifier<ScreenState> screenState;
  final ValueChanged<String> onPinEntered;
  final String title;
  final int stepNo;

  const MpinScreen({
    Key? key,
    required this.screenState,
    required this.onPinEntered,
    required this.title,
    required this.stepNo,
  }) : super(key: key);

  @override
  State<MpinScreen> createState() => _MpinScreenState();
}

class _MpinScreenState extends State<MpinScreen> {
  final OtpFieldController pinController = OtpFieldController();
  int mpinStep = 0;
  String enteredPin = "";
  String confirmPin = "";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (mpinStep == 0) {
          return true;
        } else {
          setState(() {
            confirmPin = "";
            pinController.clear();
            mpinStep = 0;
          });
          return false;
        }
      },
      child: ScreenStateAwareView(
        screenState: widget.screenState,
        haveInPlaceApiProgress: true,
        child: ListView(
          children: [
            AuthPageHeader(
              key: ValueKey(mpinStep),
              title: widget.title,
              label: mpinStep == 0
                  ? "Set your login pin"
                  : "Confirm your login pin",
              stepImage: _stepImage(),
            ),
            SizedBox(height: 16.h),
            Column(
              children: [
                SizedBox(
                  width: 313.w,
                  height: 66.h,
                  child: OTPTextField(
                      otpFieldStyle: OtpFieldStyle(
                        backgroundColor: const Color(0xFFEBECEF),
                      ),
                      controller: pinController,
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
                        if (mpinStep == 0) {
                          enteredPin = pin;
                        } else {
                          confirmPin = pin;
                        }
                        logD("Entered pin $pin");
                      },
                      onCompleted: (pin) {}),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            FractionallySizedBox(
              widthFactor: 0.9,
              child: ProgressAwareView(
                screenState: widget.screenState,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(56.h)),
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (mpinStep == 0) {
                      if (enteredPin.isNotEmpty && enteredPin.length == 4) {
                        setState(() {
                          pinController.clear();
                          mpinStep = 1;
                        });
                      } else {
                        _onFailure("Enter Login pin");
                      }
                    } else {
                      if (confirmPin.isEmpty) {
                        _onFailure("Enter Login pin");
                      } else if (enteredPin == confirmPin) {
                        widget.onPinEntered.call(enteredPin);
                      } else {
                        _onFailure("Confirm Pin do not matched");
                      }
                    }
                    // model.proceed(onFailure: _onFailure,onSuccess: _onSuccess);
                  },
                  child: const Text("Next"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _stepImage() {
    if (widget.stepNo == 4) {
      return mpinStep == 0
          ? "assets/images/bigwiz4.png"
          : "assets/images/bigwiz5.png";
    } else {
      return mpinStep == 0
          ? "assets/images/wiz32.png"
          : "assets/images/wiz33.png";
    }
  }

  void _onFailure(String message) {
    context.showErrorSnackBar(message: message);
  }
}
