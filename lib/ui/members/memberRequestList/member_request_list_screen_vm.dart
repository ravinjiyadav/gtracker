import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:g_tracker/network/models/request/member/acceptDeclineMember/accept_decline_member_request.dart';
import 'package:g_tracker/network/models/response/members/memberRequestList/member_request_list_response.dart';
import 'package:g_tracker/network/repository/member_repository.dart';

class MemberRequestListScreenVm extends BaseViewModel {
  final MemberRepository memberRepository;
  final ValueNotifier<List<MemberRequests>> membersRequestsNotifier =
      ValueNotifier([]);

  MemberRequestListScreenVm(this.memberRepository);

  Future<void> fetchRequest({
    ValueChanged<String>? onFailure,
  }) async {
    changeUiState(ScreenState.progress);
    memberRepository.getMemberRequest().then((value) {
      membersRequestsNotifier.value = value;
      if (value.isEmpty) {
        changeUiState(ScreenState.empty);
      } else {
        changeUiState(ScreenState.content);
      }
    }).onError((error, stackTrace) {
      logD("Members fetch error $error", stackTrace: stackTrace);
      if (ErrorParser.parseStatusCode(error) == 400) {
        changeUiState(ScreenState.empty);
      } else {
        changeUiState(ScreenState.error);
        onFailure?.call(ErrorParser.parseAsSingleMessage(error));
      }
    });
  }

  Future<void> acceptDeclineRequest({
    required int index,
    required AcceptDeclineMemberRequest request,
    required ValueChanged<String> onFailure,
    required ValueChanged<String> onSuccess,
  }) async {
    memberRepository
        .acceptDeclineMemberRequest(acceptDeclineMemberRequest: request)
        .then((value) {
      logD(value.message);

      final memberList = membersRequestsNotifier.value.toList();
      memberList.removeAt(index);
      membersRequestsNotifier.value = memberList;

      onSuccess.call(value.message);
      if (membersRequestsNotifier.value.isEmpty) {
        changeUiState(ScreenState.empty);
      }
    }).onError((error, stackTrace) {
      onFailure.call(ErrorParser.parseAsSingleMessage(error));
    });
  }
}
