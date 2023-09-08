// ignore_for_file: avoid_print
import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/network/models/auth_models.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/auth/auth_page_header.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../../../AppComponents/app_colors.dart' as ac;
import '../../../AppComponents/static_components.dart';
import '../../../widgets/widgets.dart';
import 'login_vm.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
//7354536510
  LoginRequest loginRequest =
      const LoginRequest(countryCode: "", phoneNumber: "");

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: BaseWidget<LoginScreenVm>(
          model: LoginScreenVm(ref.watch(authRepositoryProvider)),
          onModelReady: (model) {},
          builder: (context, model, child) {
            return SingleChildScrollView(
              child: ScreenStateAwareView(
                screenState: model.screenStateNotifier,
                haveInPlaceApiProgress: true,
                child: Column(
                  children: [
                    const AuthPageHeader(title: "Login", stepImage: null),
                    SizedBox(height: 20.h),
                    Center(
                      child: Form(
                        key: _formKey,
                        child: Container(
                            alignment: Alignment.center,
                            width: 315.w,
                            //  height: 65.h,
                            child: IntlPhoneField(
                              disableLengthCheck: false,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              controller: UserCredentials.phoneController,
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
                                // FIXME as of no option to use it from lib
                              },
                              onSaved: (PhoneNumber? phone) {
                                if (phone != null) {
                                  loginRequest = loginRequest.copyWith(
                                      countryCode: phone.countryCode,
                                      phoneNumber: phone.number);
                                }
                              },
                            )),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    ProgressAwareView(
                      screenState: model.screenStateNotifier,
                      child: CustomButton(
                        onPress: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          _formKey.currentState!.save();
                          if (loginRequest.countryCode.isNotEmpty &&
                              loginRequest.phoneNumber.isNotEmpty) {
                            logD("${loginRequest.toJson()}");
                            if (loginRequest.phoneNumber.length >= 10) {
                              logD("Forward to login");
                              model.login(
                                  request: loginRequest,
                                  onNotRegistered: _onNotRegistered,
                                  onSuccess: _onSuccess,
                                  onFailure: _onFailure);
                            } else {
                              context.showErrorSnackBar(
                                  message: "Please Enter a valid number");
                            }
                          } else {
                            context.showSnackBar(
                                message: "Please Enter a number");
                          }
                        },
                        title: "Next",
                        color: ac.AppColors.themeColor,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  void _onNotRegistered(RegisterResponse response) {
    context.showSnackBar(message: "${response.message} ${response.data!.otp}");
    Navigator.pushNamed(context, RouteName.otpVerifyScreen,
        arguments: loginRequest);
  }

  void _onSuccess(String message) {
    context.showSnackBar(message: message);
    Navigator.pushNamed(context, RouteName.loginPinScreen,
        arguments: loginRequest);
  }

  void _onFailure(String message) {
    context.showErrorSnackBar(message: message);
  }
}
