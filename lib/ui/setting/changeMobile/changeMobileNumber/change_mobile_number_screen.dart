import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/Helper/routes/route_name.dart';
import 'package:g_tracker/network/models/auth_models.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/auth/auth_page_header.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:g_tracker/widgets/common_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import '../../../../AppComponents/app_colors.dart' as ac;
import 'change_mobile_number_controller.dart';

class ChangeMobileNumberScreen extends ConsumerStatefulWidget {
  const ChangeMobileNumberScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ChangeMobileNumberScreen> createState() =>
      _ChangeMobileNumberScreenState();
}

class _ChangeMobileNumberScreenState
    extends ConsumerState<ChangeMobileNumberScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController mobileNumberController = TextEditingController();
  String? countryCodeIs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: BaseWidget<ChangeMobileNumberController>(
          model:
              ChangeMobileNumberController(ref.read(settingRepositoryProvider)),
          onModelReady: (model) {},
          builder: (context, model, child) {
            return SingleChildScrollView(
              child: ScreenStateAwareView(
                screenState: model.screenStateNotifier,
                haveInPlaceApiProgress: true,
                child: Column(
                  children: [
                    const AuthPageHeader(
                        title: "Change Mobile Number",
                        label: "Enter Your Mobile Number",
                        stepImage: "assets/images/wiz32.png"),
                    SizedBox(height: 20.h),
                    Center(
                      child: Form(
                        key: _formKey,
                        child: Container(
                            alignment: Alignment.center,
                            width: 315.w,
                            height: 65.h,
                            child: IntlPhoneField(
                              disableLengthCheck: false,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              controller: mobileNumberController,
                              decoration: InputDecoration(
                                  hintText: "Phone Number",
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 15.h)),
                              keyboardType: TextInputType.number,
                              dropdownIconPosition: IconPosition.trailing,
                              flagsButtonPadding: EdgeInsets.only(left: 20.w),
                              initialCountryCode: 'IN',
                              onSubmitted: (String? value) {
                                // on keyboard done tap
                              },
                              onSaved: (PhoneNumber? phone) {
                                if (phone != null) {
                                  countryCodeIs = phone.countryCode;
                                }
                              },
                            )),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    ProgressAwareView(
                      screenState: model.screenStateNotifier,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.w, right: 30.w),
                        child: CommonButton(
                          onPress: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            _formKey.currentState!.save();
                            if (mobileNumberController.text.isNotEmpty) {
                              if (mobileNumberController.text.length >= 10) {
                                logD("Forward to login");
                                logD("Forward to login$countryCodeIs");

                                model.changeMobile(
                                    request: LoginRequest(
                                        countryCode: countryCodeIs!,
                                        phoneNumber: mobileNumberController.text),
                                    onFailure: (String message) {
                                      context.showSnackBar(message: message);
                                    },
                                    onSuccess: (String message) {
                                      context.showSnackBar(message: message);

                                      Navigator.pushNamed(context,
                                          RouteName.changeMobileVerifyOtpScreen,
                                          arguments: {
                                            "mobile": mobileNumberController.text,
                                            "countryCode": countryCodeIs
                                          });
                                    });
                              } else {
                                context.showErrorSnackBar(
                                    message: "Please Enter a valid number");
                              }
                            } else {
                              logD(mobileNumberController.text.length);
                              context.showSnackBar(
                                  message: "Please Enter Mobile number.");
                            }
                          },
                          title: "Next",
                          color: ac.AppColors.themeColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
