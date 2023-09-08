// ignore_for_file: avoid_print
import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../AppComponents/routes_file.dart';
import '../../../AppComponents/text_styles.dart';
import '../../../widgets/widgets.dart';
import '../controller/people_vm.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
        model: PeopleScreenVm(context: context),
        builder: (context, modal, child) {
          return Scaffold(
              backgroundColor: const Color(0xFF28BFAD),
              key: modal.peopleKey,
              appBar: customAppbar(
                "People",
                () {
                  modal.peopleKey.currentState!.openDrawer();
                },
              ),
              // () => Scaffold.of(context).openDrawer()),
              drawer: const CustomDrawer(),
              body: Padding(
                padding: EdgeInsets.only(top: 30.0.h),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(26),
                      topRight: Radius.circular(26),
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
                            color: const Color(0xFFF5F5F5)),
                        height: 52.h,
                        width: 315.w,
                        child: DropdownButtonHideUnderline(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 12.0.h,
                                left: 25.w,
                                bottom: 10.h,
                                right: 10.w),
                            child: modal.isCircleLoaded
                                ? DropdownButton(
                                    hint: const Text("Select Circle"),
                                    borderRadius: BorderRadius.circular(18.r),
                                    value: modal.circleValue,
                                    items: modal.circleList.data?.circle
                                        ?.map(
                                          (e) => DropdownMenuItem(
                                            value: e.name,
                                            child: Text(
                                              e.name.toString(),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (newValue) {
                                      modal.circleValue = newValue.toString();
                                      print(modal.circleValue.runtimeType);
                                      print("new value is $newValue");
                                    },
                                  )
                                : const Center(
                                    child: CircularProgressIndicator(
                                      color: Color(0xFF28BFAD),
                                    ),
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
                          )
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
                                                      BorderRadius.circular(
                                                          10.r),
                                                  child: Image.network(
                                                    "${modal.memberList.data?.members?[index].photo.toString()}",
                                                    fit: BoxFit.cover,
                                                    height: 50.h,
                                                    width: 50.w,
                                                  ),
                                                ),
                                          Text(
                                            "${modal.memberList.data?.members?[index].fullName?.toLowerCase().toString().trim()}",
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : const Center(
                                  child: CircularProgressIndicator(
                                      color: Color(0xFF28BFAD)),
                                ),
                        ),
                      )
                    ],
                  ),
                ),
              ));
        });
  }
}
