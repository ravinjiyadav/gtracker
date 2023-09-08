// ignore_for_file: avoid_print
import 'dart:convert';
import 'package:dcbase/dcbase.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:g_tracker/localStore/link/link_box.dart';
import 'package:g_tracker/localStore/user/user_box.dart';
import 'package:g_tracker/network/models/auth_models.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart';
import 'package:g_tracker/network/repository/auth_repository.dart';
import 'package:http/http.dart' as http;

import '../../../../AppComponents/routes_file.dart';
import '../../../../AppComponents/static_components.dart';

class LoginPinScreenVm extends BaseViewModel {
  final AuthRepository authRepository;
  final TokenBox tokenBox;
  final UserBox userBox;

  final LinkBox linkBox;


  LoginPinScreenVm(this.authRepository, this.tokenBox, this.userBox,this.linkBox);

  static var client = http.Client();

  Future<void> mpinLogin({
    required int mpin,
    required String phoneNumber,
    required String countryCode,
    required ValueChanged<String> onSuccess,
    required ValueChanged<String> onFailure,
  }) async {
    changeUiState(ScreenState.apiProgress);
    final request = MpinLoginRequest(
        countryCode: countryCode,
        phoneNumber: phoneNumber,
        mpin: mpin,
      //  deviceToken: await FirebaseMessaging.instance.getToken() ?? "");
        deviceToken: "1234");
    authRepository.mpinLogin(request).then((value) {

      tokenBox.saveToken(value.token);

      // store user value
      userBox.saveUser(value.data!);
      linkBox.saveLink(value.pageLinks!);

      onSuccess.call(value.message);




    }).onError((error, stackTrace) {
      onFailure.call(ErrorParser.parseAsSingleMessage(error));
    }).whenComplete(() => changeUiState(ScreenState.content));
  }

  Future<void> forgotPin({
    required LoginRequest request,
    required ValueChanged<String> onSuccess,
    required ValueChanged<String> onFailure,
  }) async {
    changeUiState(ScreenState.apiProgress);
    await authRepository
        .register(request.copyWith(forgotPassword: true))
        .then((value) => onSuccess.call("${value.message} ${value.data?.otp}"))
        .onError((error, stackTrace) {
      logD("Error $error", stackTrace: stackTrace);
      onFailure.call(ErrorParser.parseAsSingleMessage(error));
    }).whenComplete(() => changeUiState(ScreenState.content));
  }

//POST API for M=PIN
  Future mPin(BuildContext context, String path, String phoneNumber,
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
        final snackabr = SnackBar(
          content: Text('${result['message']}'),
          action: SnackBarAction(
            label: '',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackabr);
      } else {
        UserCredentials.token = result["data"]["token"];
        UserCredentials.userId = result["data"]["user"]["id"];
        Navigator.pushNamed(context, RouteName.dashBoardScreen);
      }
      print(response.statusCode);
      print(response.body);

      return result;
    } else {
      print("error Occured");
    }
    return response;
  }
}
