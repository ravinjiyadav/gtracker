import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:g_tracker/network/models/auth_models.dart';
import 'package:g_tracker/network/repository/auth_repository.dart';

class OtpVm extends BaseViewModel {
  final AuthRepository authRepository;
  final LoginRequest loginRequest;
  String enteredPin = "";

  OtpVm(this.authRepository, this.loginRequest);

  Future<void> verifyOtpA({
    required ValueChanged<String> onSuccess,
    required ValueChanged<String> onFailure,
  }) async {
    changeUiState(ScreenState.apiProgress);
    // keep country code also from cache
    final request = VerifyOtpRequest(
      countryCode: loginRequest.countryCode,
      mobile: loginRequest.phoneNumber,
      otp: int.tryParse(enteredPin) ?? 0,
    );
    authRepository.verifyOtp(request).then((value) {
      onSuccess.call(value.message);
      changeUiState(ScreenState.content);
    }).onError((error, stackTrace) {
      onFailure.call(ErrorParser.parseAsSingleMessage(error));
      logD("Otp Verify Error ", stackTrace: stackTrace);
      changeUiState(ScreenState.content);
    });
  }

  void resendOtp({required LoginRequest request, required ValueChanged<String> onSuccess,
    required ValueChanged<String> onFailure,}) {
    changeUiState(ScreenState.apiProgress);

    authRepository.resentOtp(request).then((value) {
      onSuccess.call("${value.message}${value.data?.otp!}");
      // changeUiState(ScreenState.content);
    }).onError((error, stackTrace) {
      onFailure.call(ErrorParser.parseAsSingleMessage(error));
    })
        .whenComplete(() => changeUiState(ScreenState.content));
  }
}
