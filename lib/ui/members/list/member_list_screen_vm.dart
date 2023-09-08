import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:g_tracker/network/models/response/members/member.dart';
import 'package:g_tracker/network/repository/member_repository.dart';

class MemberListScreenVm extends BaseViewModel {
  final MemberRepository memberRepository;
  final ValueNotifier<List<Member>> membersNotifier = ValueNotifier([]);

  MemberListScreenVm(this.memberRepository);

  Future<void> fetchMembers({
    ValueChanged<String>? onFailure,
  }) async {
    changeUiState(ScreenState.progress);
    memberRepository.members().then((value) {
      membersNotifier.value = value;
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

  Future<void> deleteMember({
    required int index,
    required Member member,
    ValueChanged<String>? onFailure,
    ValueChanged<String>? onSuccess,
  }) async {
    // final memberList = membersNotifier.value.toList();
    // memberList.removeAt(index);
    // membersNotifier.value = memberList;

    memberRepository.deleteMember(memberId: member.id).then((value) {
      logD(value.message);

      final memberList = membersNotifier.value.toList();
      memberList.removeAt(index);
      membersNotifier.value = memberList;



      onSuccess?.call(value.message);

      if (membersNotifier.value.isEmpty) {
        changeUiState(ScreenState.empty);
      }
    }).onError((error, stackTrace) {
      // final list = membersNotifier.value.toList();
      // list.insert(index, member);
      // membersNotifier.value = list;
      onFailure?.call(ErrorParser.parseAsSingleMessage(error));
    });
  }

  void updateMemberList(Member member) {
    if (membersNotifier.value.isNotEmpty) {
      final list = membersNotifier.value.toList();
      list.add(member);
      membersNotifier.value = list;
    } else {
      membersNotifier.value = [member];
      changeUiState(ScreenState.content);
    }
  }
}
