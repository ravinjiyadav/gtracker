import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/common_dialog.dart';
import 'package:g_tracker/AppComponents/text_size.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/network/models/request/member/acceptDeclineMember/accept_decline_member_request.dart';
import 'package:g_tracker/network/models/response/members/memberRequestList/member_request_list_response.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/members/memberRequestList/member_request_list_screen_vm.dart';
import 'package:g_tracker/widgets/common_button.dart';
import 'package:g_tracker/AppComponents/app_colors.dart' as ac;
import 'package:g_tracker/widgets/custom_button.dart';

class MemberRequestListScreen extends ConsumerStatefulWidget {
  const MemberRequestListScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<MemberRequestListScreen> createState() =>
      _MemberListScreenState();
}

class _MemberListScreenState extends ConsumerState<MemberRequestListScreen> {
  late final MemberRequestListScreenVm memberRequestListScreenVm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Requests"),
      ),
      body: BaseWidget<MemberRequestListScreenVm>(
        model: MemberRequestListScreenVm(ref.read(memberRepositoryProvider)),
        onModelReady: (model) {
          memberRequestListScreenVm = model;
          model.fetchRequest(onFailure: _onFailure);
        },
        builder: (context, model, child) {
          return ScreenStateAwareView(
            screenState: model.screenStateNotifier,
            empty: const Center(child: Text("Not Any Request Here.")),
            progress: const Center(
              child: CircularProgressIndicator(),
            ),
            child: ValueListenableBuilder<List<MemberRequests>>(
              valueListenable: model.membersRequestsNotifier,
              builder: (context, members, child) {
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  separatorBuilder: ((context, index) =>
                      SizedBox(height: 12.h)),
                  itemBuilder: (context, index) {
                    final member = members[index];
                    return Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${members[index].senderName ?? ""} sent you a request',
                            style: TextStyles.prozaLibre400.copyWith(
                                color: ac.AppColors.headingColor,
                                fontSize: TextSizes.text16),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 45.h,
                                width: 100.w,
                                child: CustomButton(
                                color: ac.AppColors.themeColor,
                                onPress: () {
                                  CommonDialog.showLoadingDialog(context);
                                  model.acceptDeclineRequest(
                                      index: index,
                                      request: AcceptDeclineMemberRequest(
                                          requestId: members[index].id,
                                          isRequestAccepted: 2),// for accept send 2
                                      onFailure: (message) {
                                        context.showSnackBar(
                                            message: message);

                                        Navigator.pop(context);
                                      },
                                      onSuccess: (message) {
                                        Navigator.pop(context);
                                        context.showSnackBar(
                                            message: message);
                                      });
                                },
                                title: "Accept"),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              SizedBox(
                                height: 45.h,
                                width: 100.w,

                                child: CustomButton(
                                onPress: () {
                                  CommonDialog.showLoadingDialog(context);
                                  model.acceptDeclineRequest(
                                      index: index,
                                      request: AcceptDeclineMemberRequest(
                                          requestId: members[index].id,
                                          isRequestAccepted: 3), // for declined request set 3
                                      onFailure: (message) {
                                        context.showSnackBar(
                                            message: message);
                                        Navigator.pop(context);
                                      },
                                      onSuccess: (message) {
                                        Navigator.pop(context);
                                        context.showSnackBar(
                                            message: message);
                                      });
                                },
                                title: "Decline"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 1.0,
                            color: Colors.black12,
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: members.length,
                );
              },
            ),
          );
        },
      ),
    );
  }

  void _onFailure(String message) {
    context.showErrorSnackBar(message: message);
  }
}
