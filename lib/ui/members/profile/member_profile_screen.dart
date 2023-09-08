import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/app_colors.dart' as ac;
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/Helper/routes/route_name.dart';
import 'package:g_tracker/network/models/response/members/member.dart';
import 'package:g_tracker/network/models/response/members/members_location/members_location_response.dart';
import 'package:g_tracker/ui/members/profile/member_profile_screen_vm.dart';
import 'package:g_tracker/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../network/network_provider.dart';

class MemberProfileScreen extends ConsumerStatefulWidget {
  final Member member;

  const MemberProfileScreen({super.key, required this.member});

  @override
  ConsumerState<MemberProfileScreen> createState() =>
      _MemberProfileScreenState();
}

class _MemberProfileScreenState extends ConsumerState<MemberProfileScreen> {
  late MemberProfileScreenVm model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ac.AppColors.scaffoldColor,
      appBar: AppBar(
        title: const Text("Member Profile"),
        centerTitle: true,
      ),
      body: BaseWidget<MemberProfileScreenVm>(
          model: MemberProfileScreenVm(
              ref.read(memberRepositoryProvider), widget.member.id),
          onModelReady: (model) {
            model = model;
          },
          builder: (context, model, child) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Text("Member Name : ${widget.member.name}",
                          style: GoogleFonts.prozaLibre(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text("Assigned Location",
                        style: GoogleFonts.prozaLibre(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: ac.AppColors.themeColor,
                        )),
                    SizedBox(
                      height: 10.h,
                    ),

                    ValueListenableBuilder(
                        valueListenable: model.isLoading,
                        builder: (context, isLoading, child) {
                          return model.isLoading.value
                              ? const Expanded(
                                  child: Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                )
                              : Expanded(
                                  child: model.membersLocationNotifier.value
                                          .isNotEmpty
                                      ? ListView.builder(
                                          //  physics: const NeverScrollableScrollPhysics(),
                                          //  shrinkWrap: true,
                                          itemCount: model
                                              .membersLocationNotifier
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5.h),
                                                child: Text(
                                                  //  "60$index, ulica Ponomarenko, Tivali Fruenzyenski District, Minsk",
                                                  model.membersLocationNotifier
                                                      .value[index].name,
                                                  style:
                                                      TextStyles.black12px500,
                                                ));
                                          })
                                      : Center(
                                          child: Text(
                                            "No Location Assigned Yet.",
                                            style: TextStyles.black12px500,
                                          ),
                                        ));
                        }),

                    //
                    // model.isLoading.value
                    //     ? const Expanded(
                    //         child: Center(
                    //           child: CircularProgressIndicator(),
                    //         ),
                    //       )
                    //     : Expanded(
                    //         child: model.membersLocationNotifier.value.isNotEmpty
                    //             ? ListView.builder(
                    //                 //  physics: const NeverScrollableScrollPhysics(),
                    //                 //  shrinkWrap: true,
                    //                 itemCount:
                    //                     model.membersLocationNotifier.value.length,
                    //                 itemBuilder: (context, index) {
                    //                   return Padding(
                    //                       padding: EdgeInsets.only(top: 5.h),
                    //                       child: Text(
                    //                         //  "60$index, ulica Ponomarenko, Tivali Fruenzyenski District, Minsk",
                    //                         model.membersLocationNotifier.value[index]
                    //                             .name,
                    //                         style: TextStyles.black12px500,
                    //                       ));
                    //                 })
                    //             : Center(
                    //                 child: Text(
                    //                   "No Location Assigned Yet.",
                    //                   style: TextStyles.black12px500,
                    //                 ),
                    //               )),

                    CustomButton(
                      onPress: () {
                        Navigator.pushNamed(
                                context, RouteName.assignPlacesScreen,
                                arguments: widget.member)
                            .then((value) {
                          if (value == true) {
                            model.isLoading.value = true;
                            model.fetchMemberAssignLocation(
                                id: widget.member.id,
                                onSuccess: (message) {},
                                onFailure: (message) {});
                          }
                        });
                      },
                      title: "Assign Place",
                      color: ac.AppColors.themeColor,
                    ),

                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 10.h,
              // ),
              // CustomButton(
              //   onPress: () {
              //     Navigator.pushNamed(
              //         context, Routes.memberLocationHistoryScreen,
              //         arguments: widget.member);
              //   },
              //   title: "Location History",
              //   color: ac.AppColors.themeColor,
              // ),


          );
          })
    );

          }
  }

