// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ForgetPin3ScreenVm extends BaseViewModel {
  TextEditingController phoneController = TextEditingController();
  static var client = http.Client();
  dynamic enteredMpin;

// POST API for Setup LoginPIn
  Future setupNewMpin(BuildContext context, String path, String phoneNumber,
      String mPin) async {
    var uri = Uri.parse(path);
    print(uri);
    print(phoneNumber);
    print(mPin);

    var response =
        await client.post(uri, body: {"mobile": phoneNumber, "mpin": mPin});
    var jsonString = response.body;
    var result = jsonDecode(jsonString);
    if (response.statusCode == 200) {
      if (result['code'] == 401) {
        final snack = SnackBar(
          content: Text('${result['message']}'),
          action: SnackBarAction(
            label: '',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snack);
      } else {
        final snackBar = SnackBar(
          content: Text("${result['message']}"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        // Get.toNamed(ForgotPin4.routeName);
      }
      print(response.statusCode);
      print(response);
      // print(otpFromAPI);

      return result;
    } else {
      print("error Occurred");
    }
    return response;
  }
}
