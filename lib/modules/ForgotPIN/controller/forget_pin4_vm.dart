// ignore_for_file: avoid_print, prefer_const_constructors

import 'dart:convert';

import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/modules/ForgotPIN/controller/forget_pin3_vm.dart';
import 'package:http/http.dart' as http;

class ForgetPin4ScreenVm extends BaseViewModel {
  late ForgetPin3ScreenVm forgetPin3ScreenVm;
  dynamic confirmedMpin;
  TextEditingController phoneController = TextEditingController();
  String enteredMpin = "";
  static var client = http.Client();
//POST API calling
  Future confirmMPin(
    BuildContext context,
    String path,
    String mPin,
    String number,
  ) async {
    var url = Uri.parse(path);

    print(url);
    print(mPin);
    print(mPin.runtimeType);
    print(number);
    print("previous pin ${forgetPin3ScreenVm.enteredMpin}");
    print(
        "previous pin ${forgetPin3ScreenVm.enteredMpin.runtimeType}");

    var response =
        await client.post(url, body: {"mobile": number, "confirm_mpin": mPin});
    var jsonString = jsonDecode(response.body);
    print(response.statusCode);
    print(response.body);
    try {
      if (response.statusCode == 200) {
        if (jsonString["code"] == 401) {
          final snackabr = SnackBar(
            content: Text('${jsonString["message"]}'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackabr);
        } else {
          const snackabr = SnackBar(
            content: Text('M-PIN changed successfully}'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackabr);
          Navigator.pushReplacementNamed(context, RouteName.loginScreen);
          print(response.statusCode);
          print(response.body);
          return response.body;
        }
      }
      return response;
    } catch (e) {
      print(e);
    }
  }
}
