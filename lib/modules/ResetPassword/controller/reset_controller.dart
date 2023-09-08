import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';

class ResetScreenVm extends BaseViewModel {
  bool isChecked = false;
  bool isvisible = true;

  final GlobalKey<FormState> resetPasswordKey = GlobalKey<FormState>();

  TextEditingController? passwordController, confirmPasswordController;
  var password = '';
  var confirmPassword = '';

  String? validatePassword(String value) {
    if (value.length < 8) {
      return "Password must be of 8 characters";
    }
    return null;
  }

  void checkLogin(BuildContext context) {
    final isValid = resetPasswordKey.currentState!.validate();
    if (!isValid) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Invalid Credentials")));
    } else {
      resetPasswordKey.currentState!.save();
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Please check your password")));
      Future.delayed(const Duration(seconds: 2));
      // .then((value) => Get.toNamed(ResetPassword.routeName));
    }
  }
}
