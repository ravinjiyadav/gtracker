import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/widgets.dart';
import '../../../AppComponents/text_styles.dart';
import '../controller/people_vm.dart';

class InviteMember extends StatefulWidget {
  const InviteMember({Key? key}) : super(key: key);

  @override
  State<InviteMember> createState() => _InviteMemberState();
}

class _InviteMemberState extends State<InviteMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: customAppbar2(
        context,
        "Invite A New Member",
        () {},
        TextStyles.appbar2TextStyle,
      ),
      body: BaseWidget(
          model: PeopleScreenVm(context: context),
          builder: (context, modal, child) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: Container(
                        height: 48.h,
                        width: 315.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: Padding(
                            padding: EdgeInsets.all(12.0.r),
                            child: DropdownButton(
                              value: modal.dropdownValue2,
                              borderRadius: BorderRadius.circular(18.r),
                              onChanged: (String? newValue) {
                                modal.dropdownValue2 = newValue!;
                              },
                              items: modal.circle
                                  .map(
                                    (items) => DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: Container(
                        height: 48.h,
                        width: 315.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE5E5E5),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 22.h,
                        width: 319.22.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Favorites",
                              style: TextStyles.theme16px700,
                            ),
                            Text(
                              "See All+",
                              style: TextStyles.grey14px400,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 12.h,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0.w),
                      child: SizedBox(
                        height: 100.h,
                        child: ListView.separated(
                          itemCount: 12,
                          separatorBuilder: (context, index) => SizedBox(
                            width: 17.w,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => SizedBox(
                            height: 85.h,
                            width: 72.w,
                            child: Column(
                              children: [
                                Container(
                                  height: 60.h,
                                  width: 60.w,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/user.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Alexander",
                                  style: TextStyles.grey14px500,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: Container(
                        width: 75.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(22.r),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0.w),
                      child: Text(
                        "Contacts",
                        style: TextStyles.theme16px700,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 260.h,
                        width: 315.w,
                        child: ListView.separated(
                          itemBuilder: (context, index) => SizedBox(
                            width: 315.w,
                            height: 55.h,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 48.h,
                                          width: 48.w,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/user.png"),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Alex Smith",
                                              style: TextStyles.black16px500,
                                            ),
                                            Text(
                                              "+1 9876543210",
                                              style: TextStyles.grey14px400,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/check.png",
                                      height: 24.h,
                                      width: 24.w,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Container(
                                  height: 0.16.h,
                                  width: 315.w,
                                  color: const Color(0xFF707070),
                                ),
                              ],
                            ),
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 10.h,
                          ),
                          itemCount: 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: CustomButton(
                        onPress: () {},
                        title: "Send Invite",
                        color: const Color(0xFF28BFAD),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
