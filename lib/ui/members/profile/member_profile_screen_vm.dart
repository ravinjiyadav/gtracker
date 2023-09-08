import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:g_tracker/network/models/response/members/member_assigned_location/member_assigned_location_response.dart';
import 'package:g_tracker/network/repository/member_repository.dart';

class MemberProfileScreenVm extends BaseViewModel {
  final MemberRepository memberRepository;
  final int id;

  final ValueNotifier<List<MemberAssignedLocations>> membersLocationNotifier =
      ValueNotifier([]);

  final ValueNotifier<bool> isLoading = ValueNotifier(true);

  MemberProfileScreenVm(this.memberRepository, this.id) {
    fetchMemberAssignLocation(
        id: id, onSuccess: (message) {}, onFailure: (message) {});
  }

  Future<dynamic> fetchMemberAssignLocation({
    ValueChanged<String>? onFailure,
    required ValueChanged<String> onSuccess,
    required int id,
  }) async {
    isLoading.value = true;
    memberRepository.memberAssignedLocation(memberId: id).then((value) {
      // membersLocationList = value;
      membersLocationNotifier.value = value;
      isLoading.value = false;
      onSuccess.call("message");
    }).onError((error, stackTrace) {
      isLoading.value = false;
      logD("Members location fetch error $error", stackTrace: stackTrace);
      if (ErrorParser.parseStatusCode(error) == 400) {
      } else {
        onFailure?.call(ErrorParser.parseAsSingleMessage(error));
      }
    });

    return;
  }
}
