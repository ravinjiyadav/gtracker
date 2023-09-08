import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/common_dialog.dart';
import 'package:g_tracker/network/models/response/members/member.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/members/list/member_item_view.dart';
import 'package:g_tracker/ui/members/list/member_list_screen_vm.dart';
import 'package:g_tracker/widgets/custom_alert_dialog.dart';
import '../../../Helper/routes/route_name.dart';
import 'package:g_tracker/widgets/common_button.dart';
import 'package:g_tracker/AppComponents/app_colors.dart' as ac;

class MemberListScreen extends ConsumerStatefulWidget {
  final bool showSkip;

  const MemberListScreen({
    Key? key,
    required this.showSkip, //  = false
  }) : super(key: key);

  @override
  ConsumerState<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends ConsumerState<MemberListScreen> {
  late final MemberListScreenVm membersScreenVm;

  String circleValue = "Family";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Members"),
        actions: [
          widget.showSkip
              ? TextButton(
                  onPressed: () {
                    _navigateToHomeScreen();
                  },
                  child: const Text("Skip"))
              : const SizedBox()
        ],
      ),
      body: BaseWidget<MemberListScreenVm>(
        model: MemberListScreenVm(ref.read(memberRepositoryProvider)),
        onModelReady: (model) {
          membersScreenVm = model;
          model.fetchMembers(onFailure: _onFailure);
        },
        builder: (context, model, child) {
          return ScreenStateAwareView(
            screenState: model.screenStateNotifier,
            empty: const Text("No members"),
            progress: const Center(
              child: CircularProgressIndicator(),
            ),
            child: ValueListenableBuilder<List<Member>>(
              valueListenable: model.membersNotifier,
              builder: (context, members, child) {
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  separatorBuilder: ((context, index) =>
                      SizedBox(height: 12.h)),
                  itemBuilder: (context, index) {
                    final member = members[index];
                    return MemberItemView(
                      member: member,
                      onDeleteTap: () {
                        _showConfirmDialog(context,index, member);
                      },
                      onListTap: () {
                        if (widget.showSkip == false) {
                          logD("Tapped on list");

                          Navigator.pushNamed(
                              context, RouteName.memberProfileScreen,
                              arguments: model.membersNotifier.value[index]);
                        }
                      },
                    );
                  },
                  itemCount: members.length,
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 24.w),
              widget.showSkip
                  ? Expanded(
                      child: CommonButton(
                        onPress: () {
                          _navigateToHomeScreen();
                        },
                        title: "Next",
                        color: ac.AppColors.themeColor,
                      ),
                    )
                  : const SizedBox(),
              widget.showSkip ? SizedBox(width: 16.w) : const SizedBox(),
              Expanded(
                child: CommonButton(
                  onPress: _openAddScreen,
                  title: "Add +",
                  color: ac.AppColors.themeColor,
                ),
              ),
              SizedBox(width: 24.w),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> _showConfirmDialog(
      BuildContext context, int index, Member member) {
    return showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return CustomAlertDialog(
          heading: "Delete Member",
          subHeading: "Are You Sure\nYou Want To Delete Member?",
          onYesTab: () {
            Navigator.pop(context);

            CommonDialog.showLoadingDialog(context);
            membersScreenVm.deleteMember(
              index: index,
              member: member,
              onFailure: _onFailure,
              onSuccess: _onSuccess,
            );
          },
        );
      },
    );
  }

  void _onFailure(String message) {
    Navigator.pop(context);
    context.showErrorSnackBar(message: message);
  }

  void _onSuccess(String message) {
    Navigator.pop(context);
    context.showErrorSnackBar(message: message);
  }

  void _openAddScreen() async {
    // final member =
    //     await Navigator.pushNamed(context, RouteName.addMemberScreen);
    // if (member != null && member is Member) {
    //   membersScreenVm.updateMemberList(member);
    // }

    Navigator.pushNamed(context, RouteName.addMemberScreen).then((value) {
      if (value == true) {
        membersScreenVm.fetchMembers();
      }
    });
  }

  void _navigateToHomeScreen() {
    Navigator.pushReplacementNamed(context, RouteName.dashBoardScreen);
  }
}
