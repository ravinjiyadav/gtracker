import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:g_tracker/AppComponents/app_colors.dart' as ac;
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/AppComponents/static_components.dart';
import 'package:g_tracker/AppComponents/text_size.dart';
import 'package:g_tracker/network/models/response/auth/register_response.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/widgets/setting_list_view.dart';
import 'package:g_tracker/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../AppComponents/text_styles.dart';

class AccountSettingScreen extends ConsumerStatefulWidget {
  const AccountSettingScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AccountSettingScreen> createState() =>
      _AccountSettingScreenState();
}

class _AccountSettingScreenState extends ConsumerState<AccountSettingScreen> {
  bool onLeave = true;

  late GLink linkBox;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    linkBox = ref.read(linkBoxProvider).link()!;
    String a = linkBox.aboutUs!;

    print(ref.read(linkBoxProvider).link());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Setting"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 10.0.h),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                BigHeading(
                  heading: "Account",
                  styles: TextStyles.prozaLibre700.copyWith(
                    fontSize: TextSizes.text16,
                    color: ac.AppColors.themeColor,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SettingListView(
                  height: 28.h,
                  width: 28.w,
                  imageUrl: "assets/images/editprofile.png",
                  title: "Edit Profile",
                  onPress: () {
                    Navigator.pushNamed(context, RouteName.updateProfileScreen);
                  },
                ),
                SettingListView(
                  height: 28.h,
                  width: 28.w,
                  imageUrl: "assets/images/mobileicon.png",
                  title: "Change Mobile Number",
                  onPress: () {
                    Navigator.pushNamed(
                        context, RouteName.changeMobileLoginPinScreen);
                  },
                ),
                SettingListView(
                  height: 28.h,
                  width: 28.w,
                  imageUrl: "assets/images/changepin.png",
                  title: "Change Pin",
                  onPress: () {
                    Navigator.pushNamed(
                        context, RouteName.changePinVerifyLoginPinScreen);
                  },
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomDivider(
                  height: 1.h,
                  color: const Color(0xFFECECEC),
                ),
                SizedBox(
                  height: 15.h,
                ),
                BigHeading(
                  heading: "Share & Earn",
                  styles: TextStyles.theme16px700,
                ),
                SizedBox(
                  height: 10.h,
                ),
                SettingListView(
                  height: 25.h,
                  width: 25.w,
                  imageUrl: "assets/images/share.png",
                  title: "Share the App",
                  onPress: () {},
                ),
                SettingListView(
                  height: 25.h,
                  width: 25.w,
                  imageUrl: "assets/images/rate.png",
                  title: "Rate the App",
                  onPress: () {},
                ),
                SettingListView(
                  height: 25.h,
                  width: 25.w,
                  imageUrl: "assets/images/reload.png",
                  title: "Refer your Connections",
                  onPress: () {},
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomDivider(
                  height: 1.h,
                  color: const Color(0xFFECECEC),
                ),
                SizedBox(
                  height: 15.h,
                ),
                BigHeading(
                  heading: "Connect With Us",
                  styles: TextStyles.theme16px700,
                ),
                SizedBox(
                  height: 10.h,
                ),
                SettingListView(
                  height: 25.h,
                  width: 25.w,
                  imageUrl: "assets/images/aboutus.png",
                  title: "About Us",
                  onPress: () {
                    Navigator.pushNamed(context, RouteName.webViewPage,
                        arguments: {
                          "url": "${linkBox.aboutUs}",
                          "title": "About Us",
                        });

                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>  WebViewPage(
                    //   url:"${linkBox.aboutUs}",
                    //
                    //   title: "About Us",
                    // )));
                  },
                ),

                SettingListView(
                  height: 25.h,
                  width: 25.w,
                  imageUrl: "assets/images/mic.png",
                  title: "Privacy Policy",
                  onPress: () {
                    Navigator.pushNamed(context, RouteName.webViewPage,
                        arguments: {
                          "url": "${linkBox.privacy}",
                          "title": "Privacy Policy",
                        });
                  },
                ),
                SettingListView(
                  height: 25.h,
                  width: 25.w,
                  imageUrl: "assets/images/mic.png",
                  title: "Terms & Conditions",
                  onPress: () {
                    Navigator.pushNamed(context, RouteName.webViewPage,
                        arguments: {
                          "url": "${linkBox.terms}",
                          "title": "Terms & Conditions",
                        });
                  },
                ),

                SettingListView(
                  height: 25.h,
                  width: 25.w,
                  imageUrl: "assets/images/mic.png",
                  title: "Faq",
                  onPress: () {
                    Navigator.pushNamed(context, RouteName.webViewPage,
                        arguments: {
                          "url": "${linkBox.faq}",
                          "title": "Faq",
                        });
                  },
                ),

                // SettingListView(
                //   height: 25.h,
                //   width: 25.w,
                //   imageUrl: "assets/images/feedback.png",
                //   title: "Feedback",
                //   onPress: () {},
                // ),

                SettingListView(
                  height: 25.h,
                  width: 25.w,
                  imageUrl: "assets/images/mic.png",
                  title: "Log Out",
                  onPress: () {
                    logout(context);
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Notifications",
                          style: GoogleFonts.prozaLibre(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 52.sp,
                        height: 28.sp,
                        child: FlutterSwitch(
                          activeColor: ac.AppColors.themeColor,
                          padding: 3,
                          width: 56,
                          height: 32,
                          value: onLeave,
                          toggleSize: 28,
                          onToggle: (val) {
                            onLeave = val;

                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void logout(BuildContext context) {
    print("before ${UserCredentials.enteredMpin}");
    print("before ${UserCredentials.token}");
    UserCredentials.token = null;
    UserCredentials.enteredMpin = null;
    print("after ${UserCredentials.enteredMpin}");
    print("after ${UserCredentials.token}");
    Navigator.pop(context);
    // Get.back();
    // Get.back();
    Navigator.pushNamedAndRemoveUntil(
        context, LoginScreen.routeName, (route) => false);
  }
}
