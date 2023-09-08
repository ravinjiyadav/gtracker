import 'dart:async';

import 'package:dcbase/dcbase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:g_tracker/constants/redirect_type.dart';
import 'package:g_tracker/network/models/auth_models.dart';

import '../../../network/repository/auth_repository.dart';

class LoginScreenVm extends BaseViewModel {
  final AuthRepository authRepository;
  List<dynamic> data = [];

  LoginScreenVm(this.authRepository);

  Future<void> login({
    required LoginRequest request,
    required ValueChanged<String> onSuccess,
    required ValueChanged<RegisterResponse> onNotRegistered,
    required ValueChanged<String> onFailure,
  }) async {
    logD("In auth login");
    changeUiState(ScreenState.apiProgress);
    logD("Api progress");


    authRepository.register(request).then((value) {
      if (value.redirect == RedirectType.otp) {
        onNotRegistered.call(value);
      } else if (value.redirect == RedirectType.mpin) {
        onSuccess.call(value.message);
      }
    }).onError((error, stackTrace) {
      onFailure.call(ErrorParser.parseAsSingleMessage(error));
    }).whenComplete(() => changeUiState(ScreenState.content));
  }
}
