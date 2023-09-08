import 'package:dcbase/dcbase.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:g_tracker/localStore/link/link_box.dart';
import 'package:g_tracker/localStore/local_cache.dart';
import 'package:g_tracker/localStore/user/user_box.dart';
import 'package:g_tracker/network/models/auth_models.dart';
import 'package:g_tracker/network/repository/auth_repository.dart';

class SetMpinScreenVm extends BaseViewModel {
  final AuthRepository authRepository;
  final UserBox userBox;
  final LinkBox linkBox;

  // 0 enter mpin , 1 confirm mpin
  final ValueNotifier<int> currentStepNotifier = ValueNotifier(0);
  String enteredMpin = "";
  String confirmMpin = "";

  final TokenBox tokenBox;

  SetMpinScreenVm(this.authRepository, this.userBox, this.tokenBox,this.linkBox);

  void goPrev() {
    currentStepNotifier.value = 0;
  }

  void proceed(
      {required ValueChanged<String> onFailure,
      required ValueChanged<String> onSuccess}) {
    if (currentStepNotifier.value == 0) {
      currentStepNotifier.value = 1;
    } else {
      // proceed
      if (confirmMpin != enteredMpin) {
        onFailure.call("Confirm mpin do not matched!");
      } else {}
    }
  }

  Future<void> setMpin({
    required String pin,
    required ValueChanged<String> onFailure,
    required ValueChanged<String> onSuccess,
    required int currentStep,
  }) async {
    changeUiState(ScreenState.apiProgress);
    final request = ConfirmMpinRequest(
      name: LocalCache.enteredName,
      forget: currentStep != 4,
      countryCode: LocalCache.loginRequest.countryCode,
      phoneNumber: LocalCache.loginRequest.phoneNumber,
      mpin: int.parse(pin),
       deviceToken: "1234567890", // FIX me identify proper package for this
     // deviceToken: await FirebaseMessaging.instance.getToken() ?? "",
    );
    await authRepository.createMpin(request).then((value) {
      logD(value);
      // save user info in local
      userBox.saveUser(value.data!);
      linkBox.saveLink(value.pageLinks!);
      tokenBox.saveToken(value.token);
      changeUiState(ScreenState.content);

      //save user info
      onSuccess.call(value.message);
    }).onError((error, stackTrace) {
      logD("$error", stackTrace: stackTrace);
      onFailure.call(ErrorParser.parseAsSingleMessage(error));
      changeUiState(ScreenState.content);
    });
  }
}
