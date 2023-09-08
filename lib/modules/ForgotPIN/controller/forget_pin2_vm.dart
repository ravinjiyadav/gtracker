import 'dart:convert';
import 'package:dcbase/dcbase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ForgetPin2ScreenVm extends BaseViewModel {
  static var client = http.Client();
  dynamic enteredPin6;
  TextEditingController phoneController = TextEditingController();
  Future enterOTPForForgetPin(
      BuildContext context, String path, String phoneNumber, String otp) async {
    var uri = Uri.parse(path);
    if (kDebugMode) {
      print(uri);
    }

    var response =
        await client.post(uri, body: {"mobile": phoneNumber, "otp": otp});
    var jsonString = response.body;
    var result = jsonDecode(jsonString);
    if (response.statusCode == 200) {
      if (result['code'] == 401) {
        final snackBar = SnackBar(
          content: Text('${result['message']}'),
          action: SnackBarAction(
            label: '',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        final snackBar = SnackBar(
          content: Text("${result['message']}"),
          action: SnackBarAction(
            label: '',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        // Get.toNamed(ForgotPin3.routeName);
      }
      if (kDebugMode) {
        print(response.statusCode);
      }
      if (kDebugMode) {
        print(response.body);
      }
      // print(otpFromAPI);

      return result;
    } else {
      if (kDebugMode) {
        print("error Occurred");
      }
    }
    return response;
  }
}
