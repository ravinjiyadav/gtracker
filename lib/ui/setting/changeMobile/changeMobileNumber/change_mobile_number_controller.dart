import 'package:dcbase/dcbase.dart';
import 'package:flutter/cupertino.dart';
import 'package:g_tracker/network/models/request/auth/login_request.dart';
import 'package:g_tracker/network/repository/auth_repository.dart';
import 'package:g_tracker/network/repository/setting_repository.dart';

class ChangeMobileNumberController extends BaseViewModel {
  final SettingRepository settingRepository;

  ChangeMobileNumberController(this.settingRepository);

  Future<void> changeMobile({
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
