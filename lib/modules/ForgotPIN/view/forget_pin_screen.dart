// ignore_for_file: avoid_print

import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:g_tracker/AppComponents/endpoints.dart';
import 'package:g_tracker/modules/ForgotPIN/controller/forget_pin_vm.dart';
import 'package:g_tracker/widgets/common_logo.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../AppComponents/text_styles.dart';
import '../../../widgets/widgets.dart';

class ForgetPinScreen extends StatelessWidget {
  const ForgetPinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseWidget(
        model: ForgotPinScreenVm(),
        onModelReady: (modal) {},
        builder: (context, modal, child) {
          return SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                CommonLogo(
                  title: "Forgot Login PIN ",
                  image2: "assets/images/wiz.png",
                  width: 157.w,
                ),
                SizedBox(
                  height: 5.h,
                ),
                NormalText3(
                  title: "Enter Your Mobile Number",
                  textStyle: TextStyles.black16px700,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextField2(
                  height: 50.h,
                  width: 315.w,
                  child: IntlPhoneField(
                    disableLengthCheck: true,
                    controller: modal.phoneController,
                    decoration: const InputDecoration(
                      hintText: "Phone Number",
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.phone,
                    dropdownIconPosition: IconPosition.trailing,
                    flagsButtonPadding: EdgeInsets.only(left: 20.w),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onCountryChanged: (country) {
                      print('Country changed to: ${country.name}');
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  onPress: () {
                    if (modal.phoneController.text.isNotEmpty) {
                      if (int.parse(modal.phoneController.text) > 10) {
                        modal.forgotPin(
                            context,
                            Endpoints.baseUrl + Endpoints.forgetPass,
                            modal.phoneController.text);
                      } else {
                        final snackBar = SnackBar(
                          content: const Text('Please Enter a valid number'),
                          action: SnackBarAction(
                            label: '',
                            onPressed: () {},
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    } else {
                      final snackBar = SnackBar(
                        content: const Text('Please Enter a number'),
                        action: SnackBarAction(
                          label: '',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  title: "Next",
                ),
              ],
            ),
          ));
        },
      ),
    );
  }
}
