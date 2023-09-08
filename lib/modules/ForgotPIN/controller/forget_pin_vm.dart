// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:dcbase/dcbase_base_widgets.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:http/http.dart' as http;

class ForgotPinScreenVm extends BaseViewModel {
  OtpFieldController otpControllerConfirm4 = OtpFieldController();
  TextEditingController phoneController = TextEditingController();
  var phoneNumber = '';

  static var client = http.Client();

  //POST API for Forget Password
  Future forgotPin(
      BuildContext context, String path, String phoneNumber) async {
    var uri = Uri.parse(path);
    print(uri);
    print(phoneNumber);

    var response = await client.post(uri, body: {"mobile": phoneNumber});
    print(response.body);
    print(response.statusCode);
    var jsonString = response.body;
    var result = jsonDecode(jsonString);

    if (response.statusCode == 200) {
      if (result["code"] == 400) {
        final snackabr = SnackBar(
          content: Text('${result['message']}'),
          action: SnackBarAction(
            label: '',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackabr);
      } else {
        print(result["data"]["user"]["otp"].toString());
        final snackabr = SnackBar(
          content: Text(result["data"]["user"]["otp"].toString()),
          action: SnackBarAction(
            label: '',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackabr);
        // Get.toNamed(ForgetPin2.routeName);
      }
      print(response.statusCode);
      print(response.body);
      // print(otpFromAPI);

      return result;
    } else {
      final snackabr = SnackBar(
        content: const Text("API is not responding"),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackabr);
    }
    return response;
  }
}
