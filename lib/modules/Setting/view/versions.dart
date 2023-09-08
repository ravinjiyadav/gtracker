import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/app_colors.dart';

import '../../../AppComponents/text_styles.dart';
import '../../../widgets/widgets.dart';
import 'about_us.dart';

class Versions extends StatelessWidget {
  const Versions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar:
          customAppbar2(context, "Version", () {}, TextStyles.appbar2TextStyle),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 144.h,
                    width: 144.h,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "G-Tracker",
                        style: TextStyles.black20px700,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Get the G - Tracker app",
                        style: TextStyles.grey12px400,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Version",
                            style: TextStyles.black14px700,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "0.00.001",
                            style: TextStyles.orange12px400,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0.w),
                child: Text(
                  "Release Notes",
                  style: TextStyles.theme16px700,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: SizedBox(
                  height: 144.h,
                  width: 315.w,
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type book.",
                    style: TextStyles.normalTextStyle2,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 24.h,
                  width: 144.w,
                  child: Text(
                    "Why do we use it? ",
                    style: TextStyles.theme16px700,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const WhyDoWeUseIt(
                title: "1.  Lorem Ipsum is simply dummy text",
              ),
              const WhyDoWeUseIt(
                title: "2.  Lorem Ipsum is simply dummy text",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
