// ignore_for_file:  avoid_print, unused_local_variable

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/app_colors.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/AppComponents/static_components.dart';
import 'package:g_tracker/GlobalService/global_methods.dart';
import '../../../AppComponents/text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> navigateHome() async {
    await Future.delayed(const Duration(milliseconds: 2000)).then((value) =>
        Navigator.pushReplacementNamed(context, RouteName.onboardScreen));
  }

  @override
  void initState() {
    FirebaseMessaging.instance.getToken().then((newToken) {
      UserCredentials.deviceToken = newToken;
      print("Device Token $newToken");
    });
    GlobalMethod.getDeviceType();
    navigateHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));

    return Scaffold(
      backgroundColor: AppColors.themeColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: 230.h,
              width: 230.w,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("G", style: TextStyles.splashTextStyle),
                Text("-Tracker", style: TextStyles.splashText2Style),
              ],
            )
          ],
        ),
      ),
    );
  }
}
