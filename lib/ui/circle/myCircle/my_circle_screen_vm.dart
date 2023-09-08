import 'dart:async';
import 'package:dcbase/dcbase.dart';
import 'package:flutter/foundation.dart';
import 'package:g_tracker/network/models/request/member/memberRemoveFromCircle/member_remove_from_circle_request.dart';
import 'package:g_tracker/network/models/response/members/members_location/members_location_response.dart';
import 'package:g_tracker/network/repository/circle_repository.dart';
import 'package:g_tracker/network/repository/member_repository.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart' as c;

class MyCircleScreenVm extends BaseViewModel {
  final CircleRepository circleRepository;
  final MemberRepository memberRepository;

  c.Circle? circleValue;

  // List<MembersLocations> membersList = [];
  ValueNotifier<List<MembersLocations>> membersList = ValueNotifier([]);
  bool isMemberLocationLoading = true;

  final ValueNotifier<List<c.Circle>> circlesNotifier = ValueNotifier([]);

  MyCircleScreenVm(this.circleRepository, this.memberRepository) {}

  Future<dynamic> fetchCircles({ValueChanged<String>? onSuccess}) async {
    changeUiState(ScreenState.progress);

    circleRepository.circles().then((value) {
      circlesNotifier.value = value;

      if (value.isNotEmpty) {
        circleValue = value[0];
      }else{
        circleValue = null;
      }
      onSuccess!.call("");

      changeUiState(ScreenState.content);
    }).onError((error, stackTrace) {
      logD("Circles fetch error $error", stackTrace: stackTrace);
    });
  }

  Future<dynamic> fetchCircleMembers({
    ValueChanged<String>? onFailure,
    ValueChanged<String>? onSuccess,
  }) async {
    isMemberLocationLoading = true;
    memberRepository
        .circleMembers(circleId: circleValue!.id)
        .then((value) async {
      membersList.value = value;
      isMemberLocationLoading = false;

      onSuccess?.call("");
    }).onError((error, stackTrace) {
      isMemberLocationLoading = false;

      logD("Members fetch error $error", stackTrace: stackTrace);
      if (ErrorParser.parseStatusCode(error) == 400) {
      } else {
        onFailure?.call(ErrorParser.parseAsSingleMessage(error));
      }
    });

    return;
  }

  Future<void> deleteCircle({
    required int index,
    ValueChanged<String>? onFailure,
    ValueChanged<String>? onSuccess,
  }) async {
    circleRepository.deleteCircle(circleId: circleValue!.id).then((value) {
      onSuccess!.call(value.message);
      logD(value.message);
    }).onError((error, stackTrace) {
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    });
  }

  Future<void> removeMemberFromCircle({
    required ValueChanged<String>? onFailure,
    required ValueChanged<String>? onSuccess,
    required MemberRemoveFromCircleRequest request,
    required int index,
  }) async {
    memberRepository.memberRemoveFromCircle(request: request).then((value) {
      final memberList = membersList.value.toList();
      memberList.removeAt(index);
      membersList.value = memberList;
      onSuccess!.call(value.message);
      logD(value.message);
    }).onError((error, stackTrace) {
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    });
  }

  void updateCircleList(c.Circle circle) {
    if (circlesNotifier.value.isNotEmpty) {
      final list = circlesNotifier.value.toList();
      list.add(circle);
      circlesNotifier.value = list;
    } else {
      circlesNotifier.value = [circle];

      circleValue = circle; // for select fropdowen

      changeUiState(ScreenState.content);

    }
  }
}
