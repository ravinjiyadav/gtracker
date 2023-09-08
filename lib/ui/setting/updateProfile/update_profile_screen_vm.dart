import 'package:dcbase/dcbase.dart';
import 'package:flutter/foundation.dart';
import 'package:g_tracker/localStore/user/user_box.dart';
import 'package:g_tracker/network/models/request/user/update_user_detail_request.dart';
import 'package:g_tracker/network/models/response/user/user_response.dart';
import 'package:g_tracker/network/repository/user_repository.dart';

class UpdateProfileScreenVm extends BaseViewModel {
  final UserBox userBox;

  final UserRepository userRepository;

  UpdateProfileScreenVm(this.userRepository,this.userBox);

  Future<void> updateUser({
    ValueChanged<String>? onFailure,
    ValueChanged<UserResponse>? onSuccess,
    required UpdateUserDetailRequest request,
  }) async {
    changeUiState(ScreenState.apiProgress);
    await userRepository.updateUser(request).then((value) {
      userBox.saveUser(value.data);
      onSuccess?.call(value);
    }).onError((error, stackTrace) {
      logD("Error update user $error", stackTrace: stackTrace);
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    }).whenComplete(() => changeUiState(ScreenState.content));
  }
}
