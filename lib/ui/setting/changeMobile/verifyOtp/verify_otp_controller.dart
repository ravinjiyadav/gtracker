import 'package:dcbase/dcbase.dart';
import 'package:flutter/cupertino.dart';
import 'package:g_tracker/network/models/auth_models.dart';
import 'package:g_tracker/network/repository/setting_repository.dart';

class VerifyOtpController extends BaseViewModel {
  final SettingRepository settingRepository;

  VerifyOtpController(this.settingRepository);

  Future<void> verifyOtp({
    required VerifyOtpRequest request,
    required ValueChanged<String>? onSuccess,
    required ValueChanged<String>? onFailure,
  }) async {
    changeUiState(ScreenState.apiProgress);
    await settingRepository.changedMobileVerifyOtp(request).then((value) {
      onSuccess?.call(value.message);
    }).onError((error, stackTrace) {
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    }).whenComplete(() => changeUiState(ScreenState.content));
  }

  Future<void> resendOtp({
    required LoginRequest request,
    required ValueChanged<String>? onSuccess,
    required ValueChanged<String>? onFailure,
  }) async {
    changeUiState(ScreenState.apiProgress);
    await settingRepository.changeMobileNumber(request).then((value) {
      onSuccess?.call(value.message + "${value.data.otp}");
    }).onError((error, stackTrace) {
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    }).whenComplete(() => changeUiState(ScreenState.content));
  }
}
