import 'package:dcbase/dcbase.dart';
import 'package:flutter/cupertino.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart';
import 'package:g_tracker/network/repository/circle_repository.dart';

class CreateCircleVm extends BaseViewModel {
  final CircleRepository circleRepository;

  CreateCircleVm(this.circleRepository);

  Future<void> createCircle({
    required String name,
    required bool showMyLocationToOthers,
    required bool showMembersLocationToOthers,
    required Function(Circle response) onSuccess,
    required Function(String error) onFailure,
  }) async {
    changeUiState(ScreenState.apiProgress);
    circleRepository
        .createCircle(
      name: name,
      showMyLocationToOthers: showMyLocationToOthers,
      showMembersLocationToOthers: showMembersLocationToOthers,
    )
        .then((value) {
      onSuccess.call(value.circle);
    }).onError((error, stackTrace) {
      onFailure.call(ErrorParser.parseAsSingleMessage(error));
      logD("Create Circle Error $error", stackTrace: stackTrace);
    }).whenComplete(() => changeUiState(ScreenState.content));
  }

  Future<void> updateCircle({
    required String name,
    required int circleId,
    required bool showMyLocationToOthers,
    required bool showMembersLocationToOthers,
    //  required Function(String message) onSuccess,
    required ValueChanged<String> onSuccess,
    required Function(String error) onFailure,
  }) async {
    changeUiState(ScreenState.apiProgress);
    circleRepository
        .updateCircle(
      name: name,
      showMyLocationToOthers: showMyLocationToOthers,
      showMembersLocationToOthers: showMembersLocationToOthers,
      circleId: circleId,
    )
        .then((value) {
      onSuccess.call(value.message);
    }).onError((error, stackTrace) {
      onFailure.call(ErrorParser.parseAsSingleMessage(error));
      logD("Create Circle Error $error", stackTrace: stackTrace);
    }).whenComplete(() => changeUiState(ScreenState.content));
  }
}
