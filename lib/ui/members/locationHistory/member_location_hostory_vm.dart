import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:g_tracker/network/models/request/member/member_location_history/member_location_history_request.dart';
import 'package:g_tracker/network/models/response/members/memberLocationHistory/member_location_history_response.dart';
import 'package:g_tracker/network/repository/member_repository.dart';

class MemberLocationHistoryScreenVm extends BaseViewModel {
  final MemberRepository memberRepository;

   List<MemberLocationHistory> memberLocationHistory =
      [];

  final ValueNotifier<bool> isLoading = ValueNotifier(true);

  MemberLocationHistoryScreenVm(this.memberRepository);

  Future<dynamic> fetchMemberLocationHistory({
    ValueChanged<String>? onFailure,
    required ValueChanged<List<MemberLocationHistory>> onSuccess,
    required MemberLocationHistoryRequest request,
  }) async {
    isLoading.value = true;
    memberRepository.memberLocationHistory(request: request).then((value) {
      memberLocationHistory = value;
      isLoading.value = false;
      var memberLocation = value;
      onSuccess.call(memberLocation);
    }).onError((error, stackTrace) {
      isLoading.value = false;
      logD("Members location fetch error $error", stackTrace: stackTrace);
      if (ErrorParser.parseStatusCode(error) == 400) {
      } else {
        isLoading.value = false;

        onFailure?.call(ErrorParser.parseAsSingleMessage(error));
      }
    });

    return;
  }
}
