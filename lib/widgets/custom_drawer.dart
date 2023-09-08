// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/app_colors.dart';
import 'package:g_tracker/AppComponents/images.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/AppComponents/text_size.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/circle/myCircle/my_circle_screen.dart';
import 'package:g_tracker/ui/geofence/list/geofence_list_screen.dart';
import 'package:g_tracker/ui/members/memberRequestList/member_request_list_screen.dart';
import 'package:g_tracker/widgets/widgets.dart';

//Custom Drawer on HomePage

class CustomDrawer extends ConsumerStatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  ConsumerState<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends ConsumerState<CustomDrawer> {

  String? userName;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    final userBox = ref.watch(userBoxProvider);
    userName = userBox.user()?.name;
    print(userBox.user());
    print(ref.watch(linkBoxProvider).link());
    // userBox.saveUser
    //   (GUser(id: 1, countryCode: "91", mobile: "mobile"));

    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60.h,
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 68.h,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(13.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 42.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Image.asset(
                            Images.userImage,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                             // "Alexender",
                              userName ?? "",
                              style: TextStyles.prozaLibre600.copyWith(
                                fontStyle: FontStyle.normal,
                                fontSize: TextSizes.text16,
                                color: AppColors.themeColor,
                              ),
                            ),
                            Text(
                              "Account Setting",
                              style: TextStyles.prozaLibre400.copyWith(
                                fontSize: TextSizes.text14,
                                color: AppColors.buttonColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const Icon(CupertinoIcons.forward),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                RouteName.settingScreen,
              );            },
          ),
          SizedBox(
            height: 20.h,
          ),
          DrawerComponent(
            imageUrl: "assets/images/mapicon.png",
            title: "Home",
            color: Colors.black,
            onpress: () {
              Navigator.pushReplacementNamed(
                  context, RouteName.dashBoardScreen);
            },
          ),
          DrawerComponent(
            imageUrl: "assets/images/usericon.png",
            title: "Members",
            color: Colors.black,
            onpress: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                RouteName.memberListScreen,
                arguments: false,
              ).then((value) {});
            },
          ),
          DrawerComponent(
            imageUrl: "assets/images/placesico.png",
            title: "My Geofence",
            color: Colors.black,
            onpress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const GeofenceListScreen()));
            },
          ),
          DrawerComponent(
            imageUrl: "assets/images/circleicon.png",
            title: "My Circle",
            color: Colors.black,
            onpress: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) => MyCircleScreen()));
            },
          ),
          DrawerComponent(
            imageUrl: "assets/images/mobile1.png",
            title: "My Devices",
            color: Colors.black,
            onpress: () {
              Navigator.pop(context);


              Navigator.of(context).pushNamed(
                  RouteName.deviceListScreen,
                arguments: false);


            },
          ),

          DrawerComponent(
            imageUrl: "assets/images/usericon.png",
            title: "Member Request",
            color: Colors.black,
            onpress: () {
              Navigator.pop(context);


              Navigator.push(context, MaterialPageRoute(builder: (context) => const MemberRequestListScreen()));



            },
          ),


          Container(
            width: double.infinity,
            height: 0.3,
            color: Colors.grey.shade400,
          ),
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: () {
            },
            child: const SizedBox(
              width: double.infinity,
              child: NormalText(
                title: "Notifications",
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
        ],
      ),
    );
  }
}
