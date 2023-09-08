import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:g_tracker/AppComponents/app_colors.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/widgets/widgets.dart';


class PrivacyPolicy extends StatelessWidget {
  PrivacyPolicy({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> privacyKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: privacyKey,
      backgroundColor: AppColors.themeColor,
      drawer: const CustomDrawer(),
      appBar: customAppbar(
        "Privacy Policy",
        () {
          privacyKey.currentState!.openDrawer();
        },
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(26.r),
              topRight: Radius.circular(26.r),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: Container(
                  height: 256.h,
                  width: 315.w,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreyColor,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        """Lorem Ipsum is simply dummy text of the 
 printing and typesetting industry. Lorem 
Ipsum has been the industry's standard 
dummy text ever since the 1500s, when 
an unknown printer took a galley of type 
and scrambled it to make a type book.""",
                        style: TextStyles.grey14px400,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        """Lorem Ipsum is simply dummy text of the 
printing and typesetting industry. Lorem 
Ipsum has been the industry's """,
                        style: TextStyles.grey14px400,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.0.w),
                child: Text(
                  "Last updated June 24, 2021",
                  style: TextStyles.black14px400,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0.w),
                child: SizedBox(
                  height: 144.h,
                  width: 315.w,
                  child: Text(
                    """ Lorem Ipsum is simply dummy text of the 
printing and typesetting industry. Lorem 
Ipsum has been the industry's standard
dummy text ever since the 1500s, when an 
unknown printer took a galley of type and 
scrambled it to make a type book.""",
                    textAlign: TextAlign.center,
                    style: TextStyles.grey14px400,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
