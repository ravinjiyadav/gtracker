import 'package:dcbase/dcbase.dart';
import 'package:flutter/cupertino.dart';
import 'package:g_tracker/network/models/request/mpin/change_login_pin_request.dart';
import 'package:g_tracker/network/repository/setting_repository.dart';

class ConfirmChangePinVm extends BaseViewModel {
  final SettingRepository settingRepository;

  ConfirmChangePinVm(this.settingRepository);

  Future<void> changeLogInPin({
    required ChangeLoginPinRequest request,
    required ValueChanged<String>? onSuccess,
    required ValueChanged<String>? onFailure,
  }) async {
    changeUiState(ScreenState.apiProgress);
    await settingRepository.changeLoginPin(request).then((value) {
      onSuccess?.call(value.message);
    }).onError((error, stackTrace) {
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    }).whenComplete(() => changeUiState(ScreenState.content));
  }


}
