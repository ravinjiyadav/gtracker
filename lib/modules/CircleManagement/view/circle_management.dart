import 'package:dcbase/dcbase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/modules/CircleManagement/service/remote_service_circle.dart';
import 'package:g_tracker/widgets/widgets.dart';
import '../../../AppComponents/static_components.dart';
import '../../../GlobalService/circle_service.dart';
import '../../../AppComponents/text_styles.dart';
import '../controller/circle_manage_vm.dart';

class CircleManagement extends ConsumerStatefulWidget {
  const CircleManagement({Key? key}) : super(key: key);

  @override
  ConsumerState<CircleManagement> createState() => _CircleManagementState();
}

class _CircleManagementState extends ConsumerState<CircleManagement> {
  CircleManageScreenVm? circleManageScreenVm;
  // Using Circle Services
  Future fetchCircle(CircleManageScreenVm modal) async {
    modal.isCircleLoaded = false;
    var circle = await CircleService.getCircleList(
        context, UserCredentials.userId.toString());
    setState(() {
      modal.isCircleLoaded = true;
    });

    if (kDebugMode) {
      print("Circle is  $circle");
    }
    if (circle != null) {
      modal.circleList = circle;
      if (kDebugMode) {
        print(modal.circleList.runtimeType);
      }
    } else {
      if (kDebugMode) {
        print("Circle");
      }
    }
  }

  //Using Remote Services
  Future fetchMembers(CircleManageScreenVm modal) async {
    var members = await RemoteServiceCircle.fetchMembers(context);
    setState(() {
      modal.isMemberLoaded = true;
    });
    if (kDebugMode) {
      print("member is $members");
    }
    if (members != null) {
      modal.memberList = members;
    } else {
      if (kDebugMode) {
        print("device is null");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: customAppbar(
        "Circle Management",
        () {},
      ),
      body: BaseWidget(
        model: CircleManageScreenVm(),
        onModelReady: (modal) {
          circleManageScreenVm = modal;
        },
        builder: (context, modal, child) {
          fetchCircle(modal);
          fetchMembers(modal);
          return Padding(
            padding: EdgeInsets.only(top: 30.0.h),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(26.r),
                  topRight: Radius.circular(26.r),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  BigHeading(
                    alignment: Alignment.centerLeft,
                    heading: "Circle",
                    styles: TextStyles.theme16px700,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    height: 52.h,
                    width: 315.w,
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 12.0.h, left: 25.w, bottom: 10.h, right: 10.w),
                        child: modal.isCircleLoaded
                            ? DropdownButton(
                                isExpanded: true,
                                value: modal.circleValue,
                                items: modal.circleList.data?.circle!
                                    .map((item) => DropdownMenuItem(
                                          value: item.name.toString(),
                                          child: Text(item.name.toString()),
                                        ))
                                    .toList(),
                                onChanged: (String? newValue) {
                                  modal.circleValue = newValue!;
                                })
                            : const Center(
                                child: CircularProgressIndicator(),
                              ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, RouteName.inviteMemberScreen);
                    },
                    child: const BigHeading4(
                      heading1: "Invite ",
                      headingsub: "a New Member",
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  const EnterCodeWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      IconTextSubWidget(
                        image: "assets/images/childLoc.png",
                        title: "Child",
                        subTitle: "Check Location",
                      ),
                      IconTextSubWidget(
                        image: "assets/images/parent.png",
                        title: "Parent",
                        subTitle: "Stay Connected",
                        backgroundColor: Color(0xFFFC5846),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const CustomDivider(),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BigHeading4(
                        heading1: "Member ",
                        headingsub: "of a Circle",
                      ),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Row(
                          children: [
                            const Text(
                              "Edit",
                              style: TextStyle(color: Color(0xFFFC5846)),
                            ),
                            const ImageIcon(
                              AssetImage("assets/images/edit.png"),
                              color: Color(0xFFFC5846),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: SizedBox(
                        height: 200.h,
                        child: modal.isMemberLoaded
                            ? GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 5,
                                  mainAxisSpacing: 5,
                                  crossAxisSpacing: 5,
                                ),
                                itemCount:
                                    modal.memberList.data?.members?.length,
                                itemBuilder: (context, index) => SizedBox(
                                  height: 90.h,
                                  width: 60.w,
                                  child: SingleChildScrollView(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        modal.memberList.data?.members?[index]
                                                    .photo ==
                                                null
                                            ? Image.asset(
                                                "assets/images/user.png",
                                                height: 50.h,
                                                width: 50.w,
                                              )
                                            : ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                                child: Image.network(
                                                  "${modal.memberList.data?.members?[index].photo.toString()}",
                                                  fit: BoxFit.cover,
                                                  height: 50.h,
                                                  width: 50.w,
                                                ),
                                              ),
                                        Text(
                                          "${modal.memberList.data?.members?[index].fullName.toString().trim()}",
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : const Center(
                                child: CircularProgressIndicator(),
                              )),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
