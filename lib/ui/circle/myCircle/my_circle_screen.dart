import 'package:cached_network_image/cached_network_image.dart';
import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/common_dialog.dart';
import 'package:g_tracker/AppComponents/images.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/AppComponents/text_size.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/widgets/common_button.dart';
import 'package:g_tracker/widgets/custom_alert_dialog.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../AppComponents/text_styles.dart';
import 'my_circle_screen_vm.dart';

import 'package:g_tracker/AppComponents/app_colors.dart' as ac;
import 'package:g_tracker/network/models/response/circles/circle.dart' as c;
import 'package:g_tracker/network/models/request/member/memberRemoveFromCircle/member_remove_from_circle_request.dart';

class MyCircleScreen extends ConsumerStatefulWidget {
  const MyCircleScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MyCircleScreen> createState() => _CircleManagementState();
}

class _CircleManagementState extends ConsumerState<MyCircleScreen> {
  MyCircleScreenVm? circleManageScreenVm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Circle"),
      ),
      body: BaseWidget(
        model: MyCircleScreenVm(ref.watch(circleRepositoryProvider),
            ref.watch(memberRepositoryProvider)),
        onModelReady: (modal) {
          circleManageScreenVm = modal;
          fetchCircle();
        },
        builder: (context, model, child) {
          return Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 00.h,
                ),
                Text(
                  "Circles",
                  style: TextStyles.prozaLibre700.copyWith(
                      fontSize: TextSizes.text16,
                      color: ac.AppColors.themeColor),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 45.h,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: ScreenStateAwareView(
                    screenState: model.screenStateNotifier,
                    progress: const Center(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                    empty: Container(
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: const Center(child: Text("No circle")),
                    ),
                    child: ValueListenableBuilder<List<c.Circle>>(
                      valueListenable: model.circlesNotifier,
                      builder: (context, circle, child) {
                        return Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 45.h,
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.r),
                                  border:
                                      Border.all(color: ac.AppColors.hintColor),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    hint: const Text('Please Select Circle'),
                                    value: model.circleValue,
                                    onChanged: (newValue) async {
                                      model.circleValue = newValue as c.Circle;
                                      setState(() {
                                        model.circleValue =
                                            newValue as c.Circle;
                                      });
                                      model.membersList.value.clear();
                                      fetchCircleMembers();
                                    },
                                    items: circle.map((circle) {
                                      return DropdownMenuItem(
                                        value: circle,
                                        child: Row(
                                          children: [
                                            Text(circle.name),
                                            Text(
                                              (circle.isOwner == true)
                                                  ? "(Owner)"
                                                  : "(Member)",
                                              style: TextStyle(
                                                  color:
                                                      ac.AppColors.themeColor,
                                                  fontSize: TextSizes.text12),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ),
                            model.circleValue?.isOwner == true
                                ? GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, RouteName.updateCircleScreen,
                                          arguments: {
                                            "circle": model.circleValue,
                                          }).then((value) {
                                        if (value == true) {
                                          fetchCircle();
                                        }
                                      });
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.w, right: 5.w),
                                        child: Icon(Icons.edit)),
                                  )
                                : const SizedBox(),
                            model.circleValue?.isOwner == true
                                ? GestureDetector(
                                    onTap: () {
                                      showDeleteCircleDialog(context, 0, model);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 5.w),
                                      child: Image.asset(
                                        "assets/images/close.png",
                                        height: 25.h,
                                        width: 25.w,
                                      ),
                                    ),
                                  )
                                : const SizedBox()
                          ],
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Member of a Circle",
                  style: TextStyles.prozaLibre700.copyWith(
                      fontSize: TextSizes.text16,
                      color: ac.AppColors.themeColor),
                ),

                //members
                Container(
                  padding: EdgeInsets.only(
                    top: 12.h,
                    bottom: 12.h,
                  ),
                  width: 315.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final member = await Navigator.pushNamed(
                              context, RouteName.addMemberScreen,
                              arguments: model.circleValue);
                          if (member != null && member is Member) {
                            fetchCircleMembers();
                          }
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 40.h,
                              width: 40.w,
                              padding: EdgeInsets.all(6.r),
                              margin: EdgeInsets.only(top: 10.h),
                              decoration: BoxDecoration(
                                color: ac.AppColors.themeColor,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Image.asset(
                                "assets/images/addUser.png",
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Add",
                              style: GoogleFonts.prozaLibre(
                                  fontSize: 9.sp,
                                  color: ac.AppColors.themeColor,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: model.isMemberLocationLoading
                              ? SizedBox(
                                  height: 70.h,
                                  child: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                )
                              : SizedBox(
                                  height: 70.h,
                                  child: model.membersList.value.isNotEmpty
                                      ? ValueListenableBuilder(
                                          valueListenable: model.membersList,
                                          builder: (context, list, child) {
                                            return ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              //   itemCount: model.membersList.value.length,
                                              itemCount: list.length,
                                              itemBuilder:
                                                  ((context, index) =>
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 12.w),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Stack(
                                                              children: [
                                                                Container(
                                                                    margin: EdgeInsets.only(
                                                                        top: 10
                                                                            .h,
                                                                        right: 10
                                                                            .h),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.r),
                                                                    ),
                                                                    child: model
                                                                            .membersList
                                                                            .value[
                                                                                index]
                                                                            .photo
                                                                            .isNotEmpty
                                                                        ? ClipRRect(
                                                                            borderRadius: BorderRadius.circular(10
                                                                                .r),
                                                                            child:
                                                                                CachedNetworkImage(
                                                                              imageUrl: model.membersList.value[index].photo!,
                                                                              height: 40.h,
                                                                              width: 40.h,
                                                                              placeholder: (context, url) => const Center(
                                                                                  child: Padding(
                                                                                padding: EdgeInsets.all(8.0),
                                                                                child: CircularProgressIndicator(),
                                                                              )),
                                                                              fit: BoxFit.cover,
                                                                            ))
                                                                        : Image
                                                                            .asset(
                                                                            Images.userImage,
                                                                            height:
                                                                                40.h,
                                                                            width:
                                                                                40.h,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          )),
                                                                model.circleValue
                                                                            ?.isOwner ==
                                                                        true
                                                                    ? Positioned(
                                                                        right:
                                                                            0,
                                                                        top: 0,
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            showRemoveMemberFromCircleDialog(
                                                                                context,
                                                                                index,
                                                                                model);

                                                                            // CommonDialog.showLoadingDialog(context);
                                                                            // model.removeMemberFromCircle(
                                                                            //   request: MemberRemoveFromCircleRequest(memberId: model.membersList.value[index].memberId, circleId: model.circleValue!.id),
                                                                            //   index: index,
                                                                            //   onFailure: (message) {
                                                                            //     Navigator.pop(context);
                                                                            //     _showMessage(message);
                                                                            //   },
                                                                            //   onSuccess: (message) {
                                                                            //     Navigator.pop(context);
                                                                            //     _showMessage(message);
                                                                            //   },
                                                                            // );
                                                                            //
                                                                          },
                                                                          child:
                                                                              Image.asset(
                                                                            "assets/images/close.png",
                                                                            height:
                                                                                25.h,
                                                                            width:
                                                                                25.w,
                                                                          ),
                                                                        ),
                                                                      )
                                                                    : SizedBox()
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5.h,
                                                            ),
                                                            Text(
                                                              model
                                                                  .membersList
                                                                  .value[index]
                                                                  .name,
                                                              style: GoogleFonts.prozaLibre(
                                                                  fontSize:
                                                                      9.sp,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            )
                                                          ],
                                                        ),
                                                      )),
                                            );
                                          })
                                      : const Center(
                                          child: Text("No members"),
                                        ),
                                ))
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: CommonButton(
            onPress: () {
              Navigator.pushNamed(context, RouteName.createCircleScreen)
                  .then((value) {
                if (value != null && value is c.Circle) {


                  circleManageScreenVm?.updateCircleList(value);

                  fetchCircleMembers();

                }
              });
            },
            title: "Add Circle",
            color: ac.AppColors.themeColor,
          ),
        ),
      ),
    );
  }

  fetchCircle() async {
    await circleManageScreenVm?.fetchCircles(onSuccess: (message) {
      fetchCircleMembers();
    });
  }

  fetchCircleMembers() async {
    if (circleManageScreenVm?.circleValue != null) {
      await circleManageScreenVm?.fetchCircleMembers(
        onSuccess: (message) {
          setState(() {});
        },
      );
    } else {
      circleManageScreenVm?.membersList.value.clear();
      circleManageScreenVm?.isMemberLocationLoading = false;
      setState(() {});
    }
  }

  void _showMessage(String message) {
    context.showSnackBar(message: message);
  }

  Future<dynamic> showDeleteCircleDialog(
      BuildContext context, int index, MyCircleScreenVm model) {
    return showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return CustomAlertDialog(
          heading: "Delete Circle",
          subHeading: "Are You Sure\nYou Want To Delete Circle?",
          onYesTab: () {
            Navigator.pop(context);
            CommonDialog.showLoadingDialog(context);
            model.deleteCircle(
                index: 0,
                onSuccess: (message) {
                  Navigator.pop(context);
                  _showMessage(message);

                  fetchCircle();
                },
                onFailure: (message) {
                  Navigator.pop(context);
                  _showMessage(message);
                });
          },
        );
      },
    );
  }

  Future<dynamic> showRemoveMemberFromCircleDialog(
      BuildContext context, int index, MyCircleScreenVm model) {
    return showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return CustomAlertDialog(
          heading: "Remove Member",
          subHeading: "Are You Sure\nYou Want To Remove Member?",
          onYesTab: () {
            Navigator.pop(context);
            CommonDialog.showLoadingDialog(context);
            model.removeMemberFromCircle(
              request: MemberRemoveFromCircleRequest(
                  memberId: model.membersList.value[index].memberId,
                  circleId: model.circleValue!.id),
              index: index,
              onFailure: (message) {
                Navigator.pop(context);
                _showMessage(message);
              },
              onSuccess: (message) {
                Navigator.pop(context);
                _showMessage(message);
              },
            );
          },
        );
      },
    );
  }
}
